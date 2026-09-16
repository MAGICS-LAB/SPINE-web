# SPINE 网站视频设计稿（v1，2026-09-16）

网站已预留 5 个视频位，文件放到 `assets/video/` 下、按下面的文件名命名即可自动出现（没有文件时页面显示占位卡片）。每个视频请同时导出一张封面图（同名 `.jpg`，视频第一帧或最好看的一帧）。

| 编号 | 文件 | 位置 | 画幅 | 时长 | 用途 |
|---|---|---|---|---|---|
| V1 | `v1-concept.mp4` + `.jpg` | 首屏下方通栏 | 16:9，1920×1080 | 30 s，循环 | 概念片：大脑准备好了，脊髓还没有 |
| V2 | `v2-loop.mp4` + `.jpg` | Method 章节，架构图下方 | 16:9，1920×1080 | 60 s | 讲解片：一次调试会话如何跑完 |
| V3a | `v3a-software.mp4` + `.jpg` | Bugs 章节，三联 | 1:1，1080×1080 | 12 s，循环 | 软件类 bug 回放 |
| V3b | `v3b-hardware.mp4` + `.jpg` | Bugs 章节，三联 | 1:1，1080×1080 | 12 s，循环 | 硬件类 bug 回放 |
| V3c | `v3c-hybrid.mp4` + `.jpg` | Bugs 章节，三联 | 1:1，1080×1080 | 12 s，循环 | 软硬混合 bug 回放 |

通用导出规格：H.264（High profile）+ AAC，`-movflags +faststart`，30 fps，V1/V3 静音可循环（网页自动静音自动播放），V2 可以带轻量配乐但网页默认静音。码率 V1/V2 8–10 Mbps，V3 4–6 Mbps。

---

## 统一视觉语言（五支片子共用）

- **世界观**：一个"神经系统"的隐喻。上方是发光的"大脑"（基础模型），下方是真实的双臂机器人（DOBOT X-Trainer / AgileX PiPER），中间是一条本来断开的"脊髓"。SPINE 就是把这条脊髓接通的东西。
- **配色**：与网站一致。深底 `#0B1017`，钴蓝信号色 `#1D4ED8 / #6C8CFF`（数据流、健康的神经脉冲），琥珀 `#F5B54A`（需要人类动手的物理动作），绿色 `#4ADE80`（PASS / 校验通过），红色 `#F87171`（被安全门拦下的命令）。
- **材质**：机器人用真实实拍或高质量 CG（银灰金属、黑色线缆、RealSense 相机的小方块），神经/脉冲用发光线条粒子，界面用等宽字体的终端文字（JetBrains Mono 风格）。
- **镜头**：缓慢推轨（dolly in）、极少切换，每个镜头 3–5 s；不要快闪、不要故障风（glitch）滤镜，除非是表现"bug 出现"的那 1 秒。
- **文字**：屏幕文字用英文、大写、字距拉开（如 `EVIDENCE` / `TRIAGE` / `REPAIR` / `VALIDATE`）；数字用等宽字体，格式 `mm:ss`、`k/n`。
- **循环**：V1 与 V3 首尾帧要能无缝接上（结尾回到起始构图）。

生成工具建议：概念镜头（脑、脊髓、粒子）用 Veo / Sora / Runway Gen-4 / Kling 直接生成；带真实机器人的镜头，最好用实拍机器人照片/视频做 image-to-video，保真度高得多（网站里的 `assets/dobot_fig.jpg`、`assets/agilex_piper.jpg` 可当参考图）。终端文字和 HUD 建议后期在剪辑软件里叠加，AI 生成的文字容易拼错。

---

## V1 · 概念片「The brain is ready. The spinal cord is not.」（30 s，16:9，循环）

**一句话**：基础模型给了机器人聪明的大脑，但连到身体的那条脊髓是断的；SPINE 一节一节把它接通，机器人动起来。

| 时间 | 镜头 | 画面 | 屏幕文字 |
|---|---|---|---|
| 0–4 s | S1 大脑 | 纯黑背景，中央一团缓慢旋转的发光神经网络球体（钴蓝），像 fMRI 的脑活动图；细小的思考脉冲在球内游走 | 右下角小字 `FOUNDATION MODEL` |
| 4–8 s | S2 断裂的脊髓 | 镜头下摇。球体下方垂下一串"椎骨"（半透明方块，每块间隔一段），脉冲从大脑流下，到第二节就断了：光在空隙处熄灭，火花散开 | `THE DEPLOYMENT GAP` |
| 8–12 s | S3 沉睡的身体 | 继续下摇到底：一台双臂机器人（DOBOT X-Trainer）静止在昏暗的实验台上，指示灯红色，一根 USB 线松脱悬垂，终端上一行红字 | 终端：`rs-enumerate-devices: 2 devices, expected 3` |
| 12–20 s | S4 接通 | 一个新的方块（SPINE 标识，带 5 个字母）嵌入断口；脉冲逐节点亮下行：每亮一节，节上闪出一个词 `PROFILE` → `EVIDENCE` → `TRIAGE` → `REPAIR`；到倒数第二节时脉冲变琥珀色、暂停半秒（人类动作：一只手把 USB 线插回），再变蓝继续 | 每节一个词 |
| 20–25 s | S5 校验 | 最后一节亮绿，字样 `VALIDATE · PASS`；机器人指示灯从红转绿，两条手臂同步微微抬起（跟随主臂的遥操作动作） | `validation_run_id vr_0b41 → resolved` |
| 25–30 s | S6 回到全景 | 镜头拉远：大脑—完整点亮的脊髓—活动的机器人，成一条竖直的光柱；淡出到黑，回到 S1 的构图以便循环 | 中央大字 `SPINE`，下方小字 `Scalable Physical Integration with ageNtic Expertise` |

**生成提示词（英文，分镜头给视频模型）**

- S1：`A glowing cobalt-blue neural network sphere slowly rotating in pitch-black space, thin luminous filaments pulsing with tiny signals, cinematic macro lens, shallow depth of field, volumetric light, no text, 4k, slow dolly-in.`
- S2：`Camera tilts down from a glowing neural sphere; beneath it hangs a vertical chain of translucent glass vertebrae; a blue pulse travels down the chain and dies at a gap between the second and third vertebra, scattering sparks, dark laboratory background, cinematic, slow motion.`
- S3：`A bimanual robot with two silver-grey arms and small depth cameras resting motionless on a lab bench in dim blue light, a red status LED, one black USB cable unplugged and hanging, a laptop terminal glowing in the background, photoreal, slow push-in.`（用 `assets/dobot_fig.jpg` 做 image-to-video 参考）
- S4：`A chain of glass vertebrae relights one segment at a time from top to bottom as a blue pulse passes, the pulse briefly turns amber and pauses, a human hand enters frame and plugs a USB cable back into a robot controller, then the pulse turns blue again and continues, cinematic, dark lab.`
- S5：`The last vertebra flashes green; a bimanual robot's status LED changes from red to green and both arms lift gently in unison mirroring a smaller leader arm, photoreal robotics lab, soft rim light, slow motion.`
- S6：`Slow pull-back revealing a vertical column of light: a glowing neural sphere at top, a fully lit chain of vertebrae, and a bimanual robot at the bottom, pitch-black background, cinematic wide shot, fade to black.`

**后期叠加**：所有屏幕文字、终端行、`SPINE` 标题在剪辑软件叠加；字体 Bricolage Grotesque（标题）、JetBrains Mono（终端）。

---

## V2 · 讲解片「How a session runs」（60 s，16:9）

**一句话**：把论文 Fig. 1 的 a/b/c/d 变成一次真实的调试会话（以 DOBOT camera + serial 场景为蓝本）。画面是"左终端 + 右机器人"的分屏，终端行逐条打出，机器人那边对应发生变化。

| 时间 | 阶段 | 左侧终端（打字机效果） | 右侧机器人画面 | 屏幕标题 |
|---|---|---|---|---|
| 0–6 s | 一次性 Setup | `spine-profile-build dobot_xtrainer` → 三份文档（Manual / Robot specs / Example setup）飞入，压成 8 个 JSON 卡片 `metadata components interfaces software configuration procedures safety diagnostics` → `profile sealed · 412 facts` | 机器人俯视全景，三台相机各闪一次白光被"登记" | `a · SETUP — one-time profile build` |
| 6–12 s | 症状 | `symptom: 'right wrist camera stream missing'` | 右腕相机画面变黑，指示灯红 | `b · DEBUG SESSION` |
| 12–22 s | 证据 | 四个子代理并行展开成四栏：`terminal` / `contract` / `hardware` / `readiness`，各栏打出一行结论（内容见网站首屏终端） | 镜头依次扫过：终端、配置文件 diff、USB 口、三台相机状态灯 | `EVIDENCE · 4 read-only subagents` |
| 22–30 s | 分诊 | 两条结论合并：`F1 config: role bound to serial 0387…12 (not present)`（蓝）`F2 physical: right wrist camera not responding`（琥珀） | 画面把两条线分别指向 launch 文件和相机 | `TRIAGE · two faults, one symptom` |
| 30–38 s | 安全门 | 一条候选命令 `sudo rm -rf /dev/…` 进入六边形安全检查，被红色 ✕ 弹回到"用户"图标；下一条 `patch cameras.yaml` 通过，绿色 ✓ | 无 | `c · SAFETY CHECK — deterministic, not learned` |
| 38–46 s | 操作员动作 + 修复 | `▸ operator: check right wrist camera and cable` 变琥珀；出现 `✓ operator confirmed`；随后 `patch cameras.yaml right_wrist → 0387…9C · applied` | 一只手换相机、插回线（实拍最好） | `REPAIR` |
| 46–54 s | 校验 | `▸ validate: live teleoperation + hidden readiness` → `cameras 3/3 · leaders 2/2 · followers 2/2 · motion probe ok` → 大号绿字 `PASS` | 三台相机画面同时亮起，从臂跟随主臂做一个小动作 | `d · VERIFIER — only a passed test closes the case` |
| 54–60 s | 收尾 | `case resolved · vr_0b41 · incident logged · failure mode saved` 与计时器 `TTO 17:24` | 机器人绿灯待机 | `Persist · Gate · Probe` 三个词依次点亮，淡出 |

**制作方式**：这支不建议纯 AI 生成。终端半屏用网页里的同款打字动画录屏（或 After Effects 打出），右半屏用真实机器人实拍片段（换相机、插线、遥操作小动作各拍 5 s），再叠加标题。AI 生成只用于"三份文档压成 8 张卡片"和"安全六边形"两个动态图形镜头，提示词：

- `Three paper documents fly into a dark hexagonal processor and are compressed into eight floating translucent JSON cards arranged in a grid, cobalt-blue glow, clean motion graphics, black background.`
- `A line of monospaced code approaches a glowing hexagonal gate; the gate flashes red and bounces the line back toward a small human icon; a second line passes through and the gate flashes green, minimal motion graphics, dark background.`

---

## V3 · 三支 bug 回放（各 12 s，1:1，循环，静音）

三支结构完全一样，方便批量生成：**0–3 s 一切正常 → 3–4 s 故障发生 → 4–9 s SPINE 逐层探查 → 9–12 s 修复并 PASS，回到起始画面**。画面是一个"分层剖面图"：从上到下四层 `TELEOP` / `CONTROL` / `DRIVER` / `INTERFACE`（对应论文的 triage path），中间一根竖直的脊髓光柱穿过四层，右侧一台小机器人。

| | V3a 软件类 | V3b 硬件类 | V3c 软硬混合 |
|---|---|---|---|
| 故障（3–4 s） | 一行配置文本里的 serial 号变灰变旧，`launch` 路径打叉；脊髓在 DRIVER 层熄灭（症状层在 TELEOP，红点却在更下面） | 一根线缆从 INTERFACE 层被拔出，红色 E-stop 蘑菇头按下；脊髓在最底层熄灭 | 左半边配置文本变旧 + 右半边线缆拔出，两处同时熄灭 |
| 探查（4–9 s） | 蓝色探针从上到下逐层扫描，在 DRIVER 层停住并高亮那行 serial | 探针一路扫到 INTERFACE，变成琥珀色并画出一只手的图标（物理动作，SSH 做不到） | 探针先修软件那一处（亮一半），校验不过（黄色 ✕ 闪一下），再指向线缆；两处都亮 |
| 修复（9–12 s） | serial 号被改成正确值（绿色下划线），脊髓从下到上重新点亮，PASS | 手插回线缆 / 松开 E-stop，脊髓点亮，PASS | 两处都修好脊髓才点亮，PASS；文字 `one fix is never enough` |
| 底部文字 | `stale serial · wrong path` | `cable out · E-stop latched` | `hardware + software` |

**生成提示词（可通用，替换括号内内容）**

`Square format motion graphic on a near-black background: a vertical glowing cobalt spine of light passes through four stacked translucent layers labeled TELEOP, CONTROL, DRIVER, INTERFACE from top to bottom, a small bimanual robot icon on the right. At second 3 the light dies at the [DRIVER / INTERFACE / DRIVER and INTERFACE] layer and [a line of configuration text turns grey and cracks / a black cable pulls out of a port and a red mushroom E-stop button is pressed / both]. A thin blue probe scans down layer by layer and stops at the fault, [turning amber and showing a hand icon]. The fault is fixed and the spine relights from bottom to top, the robot icon's status light turns green, a green checkmark appears. Seamless loop, minimal, precise, no camera movement.`

同样，`TELEOP / CONTROL / DRIVER / INTERFACE` 四个标签和底部文字建议后期叠加，不要指望模型拼对。

---

## 可选的第 6 支：真实实拍 B-roll（不进网页固定位，做 V1/V2 的素材）

在实验室各拍 5–8 s，三脚架、缓慢推轨、暗光 + 一盏侧光：
1. DOBOT X-Trainer 全景（红灯待机 → 绿灯）
2. 手拔出 / 插回 RealSense 的 USB 线（特写）
3. 手按下 / 旋起 E-stop（特写）
4. AgileX PiPER 的 USB-CAN 转换器与两根 CAN 线（特写）
5. 主臂带动从臂的遥操作小动作（中景，两臂同框）
6. 工作站屏幕上 `roslaunch` / 终端滚动（特写，稍微失焦）

有了这六段，V1 的 S3/S5 和 V2 的右半屏都能用实拍替代 AI 生成，可信度会高很多。

---

## 交付清单

- [ ] `assets/video/v1-concept.mp4` + `v1-concept.jpg`
- [ ] `assets/video/v2-loop.mp4` + `v2-loop.jpg`
- [ ] `assets/video/v3a-software.mp4` + `.jpg`
- [ ] `assets/video/v3b-hardware.mp4` + `.jpg`
- [ ] `assets/video/v3c-hybrid.mp4` + `.jpg`
- [ ] 放好后运行 `./build.sh`，`docs/` 就是可直接部署到 GitHub Pages 的目录
