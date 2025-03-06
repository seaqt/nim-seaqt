import ./Qt5Gui_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qbrush.cpp", cflags).}


type QGradientTypeEnum* = distinct cint
template LinearGradient*(_: type QGradientTypeEnum): untyped = 0
template RadialGradient*(_: type QGradientTypeEnum): untyped = 1
template ConicalGradient*(_: type QGradientTypeEnum): untyped = 2
template NoGradient*(_: type QGradientTypeEnum): untyped = 3


type QGradientSpreadEnum* = distinct cint
template PadSpread*(_: type QGradientSpreadEnum): untyped = 0
template ReflectSpread*(_: type QGradientSpreadEnum): untyped = 1
template RepeatSpread*(_: type QGradientSpreadEnum): untyped = 2


type QGradientCoordinateModeEnum* = distinct cint
template LogicalMode*(_: type QGradientCoordinateModeEnum): untyped = 0
template StretchToDeviceMode*(_: type QGradientCoordinateModeEnum): untyped = 1
template ObjectBoundingMode*(_: type QGradientCoordinateModeEnum): untyped = 2
template ObjectMode*(_: type QGradientCoordinateModeEnum): untyped = 3


type QGradientInterpolationModeEnum* = distinct cint
template ColorInterpolation*(_: type QGradientInterpolationModeEnum): untyped = 0
template ComponentInterpolation*(_: type QGradientInterpolationModeEnum): untyped = 1


type QGradientPresetEnum* = distinct cint
template WarmFlame*(_: type QGradientPresetEnum): untyped = 1
template NightFade*(_: type QGradientPresetEnum): untyped = 2
template SpringWarmth*(_: type QGradientPresetEnum): untyped = 3
template JuicyPeach*(_: type QGradientPresetEnum): untyped = 4
template YoungPassion*(_: type QGradientPresetEnum): untyped = 5
template LadyLips*(_: type QGradientPresetEnum): untyped = 6
template SunnyMorning*(_: type QGradientPresetEnum): untyped = 7
template RainyAshville*(_: type QGradientPresetEnum): untyped = 8
template FrozenDreams*(_: type QGradientPresetEnum): untyped = 9
template WinterNeva*(_: type QGradientPresetEnum): untyped = 10
template DustyGrass*(_: type QGradientPresetEnum): untyped = 11
template TemptingAzure*(_: type QGradientPresetEnum): untyped = 12
template HeavyRain*(_: type QGradientPresetEnum): untyped = 13
template AmyCrisp*(_: type QGradientPresetEnum): untyped = 14
template MeanFruit*(_: type QGradientPresetEnum): untyped = 15
template DeepBlue*(_: type QGradientPresetEnum): untyped = 16
template RipeMalinka*(_: type QGradientPresetEnum): untyped = 17
template CloudyKnoxville*(_: type QGradientPresetEnum): untyped = 18
template MalibuBeach*(_: type QGradientPresetEnum): untyped = 19
template NewLife*(_: type QGradientPresetEnum): untyped = 20
template TrueSunset*(_: type QGradientPresetEnum): untyped = 21
template MorpheusDen*(_: type QGradientPresetEnum): untyped = 22
template RareWind*(_: type QGradientPresetEnum): untyped = 23
template NearMoon*(_: type QGradientPresetEnum): untyped = 24
template WildApple*(_: type QGradientPresetEnum): untyped = 25
template SaintPetersburg*(_: type QGradientPresetEnum): untyped = 26
template PlumPlate*(_: type QGradientPresetEnum): untyped = 28
template EverlastingSky*(_: type QGradientPresetEnum): untyped = 29
template HappyFisher*(_: type QGradientPresetEnum): untyped = 30
template Blessing*(_: type QGradientPresetEnum): untyped = 31
template SharpeyeEagle*(_: type QGradientPresetEnum): untyped = 32
template LadogaBottom*(_: type QGradientPresetEnum): untyped = 33
template LemonGate*(_: type QGradientPresetEnum): untyped = 34
template ItmeoBranding*(_: type QGradientPresetEnum): untyped = 35
template ZeusMiracle*(_: type QGradientPresetEnum): untyped = 36
template OldHat*(_: type QGradientPresetEnum): untyped = 37
template StarWine*(_: type QGradientPresetEnum): untyped = 38
template HappyAcid*(_: type QGradientPresetEnum): untyped = 41
template AwesomePine*(_: type QGradientPresetEnum): untyped = 42
template NewYork*(_: type QGradientPresetEnum): untyped = 43
template ShyRainbow*(_: type QGradientPresetEnum): untyped = 44
template MixedHopes*(_: type QGradientPresetEnum): untyped = 46
template FlyHigh*(_: type QGradientPresetEnum): untyped = 47
template StrongBliss*(_: type QGradientPresetEnum): untyped = 48
template FreshMilk*(_: type QGradientPresetEnum): untyped = 49
template SnowAgain*(_: type QGradientPresetEnum): untyped = 50
template FebruaryInk*(_: type QGradientPresetEnum): untyped = 51
template KindSteel*(_: type QGradientPresetEnum): untyped = 52
template SoftGrass*(_: type QGradientPresetEnum): untyped = 53
template GrownEarly*(_: type QGradientPresetEnum): untyped = 54
template SharpBlues*(_: type QGradientPresetEnum): untyped = 55
template ShadyWater*(_: type QGradientPresetEnum): untyped = 56
template DirtyBeauty*(_: type QGradientPresetEnum): untyped = 57
template GreatWhale*(_: type QGradientPresetEnum): untyped = 58
template TeenNotebook*(_: type QGradientPresetEnum): untyped = 59
template PoliteRumors*(_: type QGradientPresetEnum): untyped = 60
template SweetPeriod*(_: type QGradientPresetEnum): untyped = 61
template WideMatrix*(_: type QGradientPresetEnum): untyped = 62
template SoftCherish*(_: type QGradientPresetEnum): untyped = 63
template RedSalvation*(_: type QGradientPresetEnum): untyped = 64
template BurningSpring*(_: type QGradientPresetEnum): untyped = 65
template NightParty*(_: type QGradientPresetEnum): untyped = 66
template SkyGlider*(_: type QGradientPresetEnum): untyped = 67
template HeavenPeach*(_: type QGradientPresetEnum): untyped = 68
template PurpleDivision*(_: type QGradientPresetEnum): untyped = 69
template AquaSplash*(_: type QGradientPresetEnum): untyped = 70
template SpikyNaga*(_: type QGradientPresetEnum): untyped = 72
template LoveKiss*(_: type QGradientPresetEnum): untyped = 73
template CleanMirror*(_: type QGradientPresetEnum): untyped = 75
template PremiumDark*(_: type QGradientPresetEnum): untyped = 76
template ColdEvening*(_: type QGradientPresetEnum): untyped = 77
template CochitiLake*(_: type QGradientPresetEnum): untyped = 78
template SummerGames*(_: type QGradientPresetEnum): untyped = 79
template PassionateBed*(_: type QGradientPresetEnum): untyped = 80
template MountainRock*(_: type QGradientPresetEnum): untyped = 81
template DesertHump*(_: type QGradientPresetEnum): untyped = 82
template JungleDay*(_: type QGradientPresetEnum): untyped = 83
template PhoenixStart*(_: type QGradientPresetEnum): untyped = 84
template OctoberSilence*(_: type QGradientPresetEnum): untyped = 85
template FarawayRiver*(_: type QGradientPresetEnum): untyped = 86
template AlchemistLab*(_: type QGradientPresetEnum): untyped = 87
template OverSun*(_: type QGradientPresetEnum): untyped = 88
template PremiumWhite*(_: type QGradientPresetEnum): untyped = 89
template MarsParty*(_: type QGradientPresetEnum): untyped = 90
template EternalConstance*(_: type QGradientPresetEnum): untyped = 91
template JapanBlush*(_: type QGradientPresetEnum): untyped = 92
template SmilingRain*(_: type QGradientPresetEnum): untyped = 93
template CloudyApple*(_: type QGradientPresetEnum): untyped = 94
template BigMango*(_: type QGradientPresetEnum): untyped = 95
template HealthyWater*(_: type QGradientPresetEnum): untyped = 96
template AmourAmour*(_: type QGradientPresetEnum): untyped = 97
template RiskyConcrete*(_: type QGradientPresetEnum): untyped = 98
template StrongStick*(_: type QGradientPresetEnum): untyped = 99
template ViciousStance*(_: type QGradientPresetEnum): untyped = 100
template PaloAlto*(_: type QGradientPresetEnum): untyped = 101
template HappyMemories*(_: type QGradientPresetEnum): untyped = 102
template MidnightBloom*(_: type QGradientPresetEnum): untyped = 103
template Crystalline*(_: type QGradientPresetEnum): untyped = 104
template PartyBliss*(_: type QGradientPresetEnum): untyped = 106
template ConfidentCloud*(_: type QGradientPresetEnum): untyped = 107
template LeCocktail*(_: type QGradientPresetEnum): untyped = 108
template RiverCity*(_: type QGradientPresetEnum): untyped = 109
template FrozenBerry*(_: type QGradientPresetEnum): untyped = 110
template ChildCare*(_: type QGradientPresetEnum): untyped = 112
template FlyingLemon*(_: type QGradientPresetEnum): untyped = 113
template NewRetrowave*(_: type QGradientPresetEnum): untyped = 114
template HiddenJaguar*(_: type QGradientPresetEnum): untyped = 115
template AboveTheSky*(_: type QGradientPresetEnum): untyped = 116
template Nega*(_: type QGradientPresetEnum): untyped = 117
template DenseWater*(_: type QGradientPresetEnum): untyped = 118
template Seashore*(_: type QGradientPresetEnum): untyped = 120
template MarbleWall*(_: type QGradientPresetEnum): untyped = 121
template CheerfulCaramel*(_: type QGradientPresetEnum): untyped = 122
template NightSky*(_: type QGradientPresetEnum): untyped = 123
template MagicLake*(_: type QGradientPresetEnum): untyped = 124
template YoungGrass*(_: type QGradientPresetEnum): untyped = 125
template ColorfulPeach*(_: type QGradientPresetEnum): untyped = 126
template GentleCare*(_: type QGradientPresetEnum): untyped = 127
template PlumBath*(_: type QGradientPresetEnum): untyped = 128
template HappyUnicorn*(_: type QGradientPresetEnum): untyped = 129
template AfricanField*(_: type QGradientPresetEnum): untyped = 131
template SolidStone*(_: type QGradientPresetEnum): untyped = 132
template OrangeJuice*(_: type QGradientPresetEnum): untyped = 133
template GlassWater*(_: type QGradientPresetEnum): untyped = 134
template NorthMiracle*(_: type QGradientPresetEnum): untyped = 136
template FruitBlend*(_: type QGradientPresetEnum): untyped = 137
template MillenniumPine*(_: type QGradientPresetEnum): untyped = 138
template HighFlight*(_: type QGradientPresetEnum): untyped = 139
template MoleHall*(_: type QGradientPresetEnum): untyped = 140
template SpaceShift*(_: type QGradientPresetEnum): untyped = 142
template ForestInei*(_: type QGradientPresetEnum): untyped = 143
template RoyalGarden*(_: type QGradientPresetEnum): untyped = 144
template RichMetal*(_: type QGradientPresetEnum): untyped = 145
template JuicyCake*(_: type QGradientPresetEnum): untyped = 146
template SmartIndigo*(_: type QGradientPresetEnum): untyped = 147
template SandStrike*(_: type QGradientPresetEnum): untyped = 148
template NorseBeauty*(_: type QGradientPresetEnum): untyped = 149
template AquaGuidance*(_: type QGradientPresetEnum): untyped = 150
template SunVeggie*(_: type QGradientPresetEnum): untyped = 151
template SeaLord*(_: type QGradientPresetEnum): untyped = 152
template BlackSea*(_: type QGradientPresetEnum): untyped = 153
template GrassShampoo*(_: type QGradientPresetEnum): untyped = 154
template LandingAircraft*(_: type QGradientPresetEnum): untyped = 155
template WitchDance*(_: type QGradientPresetEnum): untyped = 156
template SleeplessNight*(_: type QGradientPresetEnum): untyped = 157
template AngelCare*(_: type QGradientPresetEnum): untyped = 158
template CrystalRiver*(_: type QGradientPresetEnum): untyped = 159
template SoftLipstick*(_: type QGradientPresetEnum): untyped = 160
template SaltMountain*(_: type QGradientPresetEnum): untyped = 161
template PerfectWhite*(_: type QGradientPresetEnum): untyped = 162
template FreshOasis*(_: type QGradientPresetEnum): untyped = 163
template StrictNovember*(_: type QGradientPresetEnum): untyped = 164
template MorningSalad*(_: type QGradientPresetEnum): untyped = 165
template DeepRelief*(_: type QGradientPresetEnum): untyped = 166
template SeaStrike*(_: type QGradientPresetEnum): untyped = 167
template NightCall*(_: type QGradientPresetEnum): untyped = 168
template SupremeSky*(_: type QGradientPresetEnum): untyped = 169
template LightBlue*(_: type QGradientPresetEnum): untyped = 170
template MindCrawl*(_: type QGradientPresetEnum): untyped = 171
template LilyMeadow*(_: type QGradientPresetEnum): untyped = 172
template SugarLollipop*(_: type QGradientPresetEnum): untyped = 173
template SweetDessert*(_: type QGradientPresetEnum): untyped = 174
template MagicRay*(_: type QGradientPresetEnum): untyped = 175
template TeenParty*(_: type QGradientPresetEnum): untyped = 176
template FrozenHeat*(_: type QGradientPresetEnum): untyped = 177
template GagarinView*(_: type QGradientPresetEnum): untyped = 178
template FabledSunset*(_: type QGradientPresetEnum): untyped = 179
template PerfectBlue*(_: type QGradientPresetEnum): untyped = 180
template NumPresets*(_: type QGradientPresetEnum): untyped = 181


import ./gen_qbrush_types
export gen_qbrush_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qcolor_types,
  ./gen_qimage_types,
  ./gen_qmatrix_types,
  ./gen_qpixmap_types,
  ./gen_qtransform_types
export
  gen_qpoint_types,
  gen_qvariant_types,
  gen_qcolor_types,
  gen_qimage_types,
  gen_qmatrix_types,
  gen_qpixmap_types,
  gen_qtransform_types

type cQBrush*{.exportc: "QBrush", incompleteStruct.} = object
type cQBrushData*{.exportc: "QBrushData", incompleteStruct.} = object
type cQGradient*{.exportc: "QGradient", incompleteStruct.} = object
type cQLinearGradient*{.exportc: "QLinearGradient", incompleteStruct.} = object
type cQRadialGradient*{.exportc: "QRadialGradient", incompleteStruct.} = object
type cQConicalGradient*{.exportc: "QConicalGradient", incompleteStruct.} = object
type cQGradientQGradientData*{.exportc: "QGradient__QGradientData", incompleteStruct.} = object

proc fcQBrush_new(): ptr cQBrush {.importc: "QBrush_new".}
proc fcQBrush_new2(bs: cint): ptr cQBrush {.importc: "QBrush_new2".}
proc fcQBrush_new3(color: pointer): ptr cQBrush {.importc: "QBrush_new3".}
proc fcQBrush_new4(color: cint): ptr cQBrush {.importc: "QBrush_new4".}
proc fcQBrush_new5(color: pointer, pixmap: pointer): ptr cQBrush {.importc: "QBrush_new5".}
proc fcQBrush_new6(color: cint, pixmap: pointer): ptr cQBrush {.importc: "QBrush_new6".}
proc fcQBrush_new7(pixmap: pointer): ptr cQBrush {.importc: "QBrush_new7".}
proc fcQBrush_new8(image: pointer): ptr cQBrush {.importc: "QBrush_new8".}
proc fcQBrush_new9(brush: pointer): ptr cQBrush {.importc: "QBrush_new9".}
proc fcQBrush_new10(gradient: pointer): ptr cQBrush {.importc: "QBrush_new10".}
proc fcQBrush_new11(color: pointer, bs: cint): ptr cQBrush {.importc: "QBrush_new11".}
proc fcQBrush_new12(color: cint, bs: cint): ptr cQBrush {.importc: "QBrush_new12".}
proc fcQBrush_operatorAssign(self: pointer, brush: pointer): void {.importc: "QBrush_operatorAssign".}
proc fcQBrush_swap(self: pointer, other: pointer): void {.importc: "QBrush_swap".}
proc fcQBrush_ToQVariant(self: pointer, ): pointer {.importc: "QBrush_ToQVariant".}
proc fcQBrush_style(self: pointer, ): cint {.importc: "QBrush_style".}
proc fcQBrush_setStyle(self: pointer, style: cint): void {.importc: "QBrush_setStyle".}
proc fcQBrush_matrix(self: pointer, ): pointer {.importc: "QBrush_matrix".}
proc fcQBrush_setMatrix(self: pointer, mat: pointer): void {.importc: "QBrush_setMatrix".}
proc fcQBrush_transform(self: pointer, ): pointer {.importc: "QBrush_transform".}
proc fcQBrush_setTransform(self: pointer, transform: pointer): void {.importc: "QBrush_setTransform".}
proc fcQBrush_texture(self: pointer, ): pointer {.importc: "QBrush_texture".}
proc fcQBrush_setTexture(self: pointer, pixmap: pointer): void {.importc: "QBrush_setTexture".}
proc fcQBrush_textureImage(self: pointer, ): pointer {.importc: "QBrush_textureImage".}
proc fcQBrush_setTextureImage(self: pointer, image: pointer): void {.importc: "QBrush_setTextureImage".}
proc fcQBrush_color(self: pointer, ): pointer {.importc: "QBrush_color".}
proc fcQBrush_setColor(self: pointer, color: pointer): void {.importc: "QBrush_setColor".}
proc fcQBrush_setColorWithColor(self: pointer, color: cint): void {.importc: "QBrush_setColorWithColor".}
proc fcQBrush_gradient(self: pointer, ): pointer {.importc: "QBrush_gradient".}
proc fcQBrush_isOpaque(self: pointer, ): bool {.importc: "QBrush_isOpaque".}
proc fcQBrush_operatorEqual(self: pointer, b: pointer): bool {.importc: "QBrush_operatorEqual".}
proc fcQBrush_operatorNotEqual(self: pointer, b: pointer): bool {.importc: "QBrush_operatorNotEqual".}
proc fcQBrush_isDetached(self: pointer, ): bool {.importc: "QBrush_isDetached".}
proc fcQBrush_delete(self: pointer) {.importc: "QBrush_delete".}
proc fcQBrushData_new(param1: pointer): ptr cQBrushData {.importc: "QBrushData_new".}
proc fcQBrushData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QBrushData_operatorAssign".}
proc fcQBrushData_delete(self: pointer) {.importc: "QBrushData_delete".}
proc fcQGradient_new(): ptr cQGradient {.importc: "QGradient_new".}
proc fcQGradient_new2(param1: cint): ptr cQGradient {.importc: "QGradient_new2".}
proc fcQGradient_new3(param1: pointer): ptr cQGradient {.importc: "QGradient_new3".}
proc fcQGradient_typeX(self: pointer, ): cint {.importc: "QGradient_type".}
proc fcQGradient_setSpread(self: pointer, spread: cint): void {.importc: "QGradient_setSpread".}
proc fcQGradient_spread(self: pointer, ): cint {.importc: "QGradient_spread".}
proc fcQGradient_setColorAt(self: pointer, pos: float64, color: pointer): void {.importc: "QGradient_setColorAt".}
proc fcQGradient_setStops(self: pointer, stops: struct_miqt_array): void {.importc: "QGradient_setStops".}
proc fcQGradient_stops(self: pointer, ): struct_miqt_array {.importc: "QGradient_stops".}
proc fcQGradient_coordinateMode(self: pointer, ): cint {.importc: "QGradient_coordinateMode".}
proc fcQGradient_setCoordinateMode(self: pointer, mode: cint): void {.importc: "QGradient_setCoordinateMode".}
proc fcQGradient_interpolationMode(self: pointer, ): cint {.importc: "QGradient_interpolationMode".}
proc fcQGradient_setInterpolationMode(self: pointer, mode: cint): void {.importc: "QGradient_setInterpolationMode".}
proc fcQGradient_operatorEqual(self: pointer, gradient: pointer): bool {.importc: "QGradient_operatorEqual".}
proc fcQGradient_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QGradient_operatorNotEqual".}
proc fcQGradient_delete(self: pointer) {.importc: "QGradient_delete".}
proc fcQLinearGradient_new(): ptr cQLinearGradient {.importc: "QLinearGradient_new".}
proc fcQLinearGradient_new2(start: pointer, finalStop: pointer): ptr cQLinearGradient {.importc: "QLinearGradient_new2".}
proc fcQLinearGradient_new3(xStart: float64, yStart: float64, xFinalStop: float64, yFinalStop: float64): ptr cQLinearGradient {.importc: "QLinearGradient_new3".}
proc fcQLinearGradient_new4(param1: pointer): ptr cQLinearGradient {.importc: "QLinearGradient_new4".}
proc fcQLinearGradient_start(self: pointer, ): pointer {.importc: "QLinearGradient_start".}
proc fcQLinearGradient_setStart(self: pointer, start: pointer): void {.importc: "QLinearGradient_setStart".}
proc fcQLinearGradient_setStart2(self: pointer, x: float64, y: float64): void {.importc: "QLinearGradient_setStart2".}
proc fcQLinearGradient_finalStop(self: pointer, ): pointer {.importc: "QLinearGradient_finalStop".}
proc fcQLinearGradient_setFinalStop(self: pointer, stop: pointer): void {.importc: "QLinearGradient_setFinalStop".}
proc fcQLinearGradient_setFinalStop2(self: pointer, x: float64, y: float64): void {.importc: "QLinearGradient_setFinalStop2".}
proc fcQLinearGradient_delete(self: pointer) {.importc: "QLinearGradient_delete".}
proc fcQRadialGradient_new(): ptr cQRadialGradient {.importc: "QRadialGradient_new".}
proc fcQRadialGradient_new2(center: pointer, radius: float64, focalPoint: pointer): ptr cQRadialGradient {.importc: "QRadialGradient_new2".}
proc fcQRadialGradient_new3(cx: float64, cy: float64, radius: float64, fx: float64, fy: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new3".}
proc fcQRadialGradient_new4(center: pointer, radius: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new4".}
proc fcQRadialGradient_new5(cx: float64, cy: float64, radius: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new5".}
proc fcQRadialGradient_new6(center: pointer, centerRadius: float64, focalPoint: pointer, focalRadius: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new6".}
proc fcQRadialGradient_new7(cx: float64, cy: float64, centerRadius: float64, fx: float64, fy: float64, focalRadius: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new7".}
proc fcQRadialGradient_new8(param1: pointer): ptr cQRadialGradient {.importc: "QRadialGradient_new8".}
proc fcQRadialGradient_center(self: pointer, ): pointer {.importc: "QRadialGradient_center".}
proc fcQRadialGradient_setCenter(self: pointer, center: pointer): void {.importc: "QRadialGradient_setCenter".}
proc fcQRadialGradient_setCenter2(self: pointer, x: float64, y: float64): void {.importc: "QRadialGradient_setCenter2".}
proc fcQRadialGradient_focalPoint(self: pointer, ): pointer {.importc: "QRadialGradient_focalPoint".}
proc fcQRadialGradient_setFocalPoint(self: pointer, focalPoint: pointer): void {.importc: "QRadialGradient_setFocalPoint".}
proc fcQRadialGradient_setFocalPoint2(self: pointer, x: float64, y: float64): void {.importc: "QRadialGradient_setFocalPoint2".}
proc fcQRadialGradient_radius(self: pointer, ): float64 {.importc: "QRadialGradient_radius".}
proc fcQRadialGradient_setRadius(self: pointer, radius: float64): void {.importc: "QRadialGradient_setRadius".}
proc fcQRadialGradient_centerRadius(self: pointer, ): float64 {.importc: "QRadialGradient_centerRadius".}
proc fcQRadialGradient_setCenterRadius(self: pointer, radius: float64): void {.importc: "QRadialGradient_setCenterRadius".}
proc fcQRadialGradient_focalRadius(self: pointer, ): float64 {.importc: "QRadialGradient_focalRadius".}
proc fcQRadialGradient_setFocalRadius(self: pointer, radius: float64): void {.importc: "QRadialGradient_setFocalRadius".}
proc fcQRadialGradient_delete(self: pointer) {.importc: "QRadialGradient_delete".}
proc fcQConicalGradient_new(): ptr cQConicalGradient {.importc: "QConicalGradient_new".}
proc fcQConicalGradient_new2(center: pointer, startAngle: float64): ptr cQConicalGradient {.importc: "QConicalGradient_new2".}
proc fcQConicalGradient_new3(cx: float64, cy: float64, startAngle: float64): ptr cQConicalGradient {.importc: "QConicalGradient_new3".}
proc fcQConicalGradient_new4(param1: pointer): ptr cQConicalGradient {.importc: "QConicalGradient_new4".}
proc fcQConicalGradient_center(self: pointer, ): pointer {.importc: "QConicalGradient_center".}
proc fcQConicalGradient_setCenter(self: pointer, center: pointer): void {.importc: "QConicalGradient_setCenter".}
proc fcQConicalGradient_setCenter2(self: pointer, x: float64, y: float64): void {.importc: "QConicalGradient_setCenter2".}
proc fcQConicalGradient_angle(self: pointer, ): float64 {.importc: "QConicalGradient_angle".}
proc fcQConicalGradient_setAngle(self: pointer, angle: float64): void {.importc: "QConicalGradient_setAngle".}
proc fcQConicalGradient_delete(self: pointer) {.importc: "QConicalGradient_delete".}
proc fcQGradientQGradientData_new(param1: pointer): ptr cQGradientQGradientData {.importc: "QGradient__QGradientData_new".}
proc fcQGradientQGradientData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QGradient__QGradientData_operatorAssign".}
proc fcQGradientQGradientData_delete(self: pointer) {.importc: "QGradient__QGradientData_delete".}


func init*(T: type gen_qbrush_types.QBrush, h: ptr cQBrush): gen_qbrush_types.QBrush =
  T(h: h)
proc create*(T: type gen_qbrush_types.QBrush, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new())

proc create*(T: type gen_qbrush_types.QBrush, bs: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new2(cint(bs)))

proc create*(T: type gen_qbrush_types.QBrush, color: gen_qcolor_types.QColor): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new3(color.h))

proc create2*(T: type gen_qbrush_types.QBrush, color: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new4(cint(color)))

proc create*(T: type gen_qbrush_types.QBrush, color: gen_qcolor_types.QColor, pixmap: gen_qpixmap_types.QPixmap): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new5(color.h, pixmap.h))

proc create*(T: type gen_qbrush_types.QBrush, color: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new6(cint(color), pixmap.h))

proc create*(T: type gen_qbrush_types.QBrush, pixmap: gen_qpixmap_types.QPixmap): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new7(pixmap.h))

proc create*(T: type gen_qbrush_types.QBrush, image: gen_qimage_types.QImage): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new8(image.h))

proc create*(T: type gen_qbrush_types.QBrush, brush: gen_qbrush_types.QBrush): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new9(brush.h))

proc create*(T: type gen_qbrush_types.QBrush, gradient: gen_qbrush_types.QGradient): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new10(gradient.h))

proc create*(T: type gen_qbrush_types.QBrush, color: gen_qcolor_types.QColor, bs: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new11(color.h, cint(bs)))

proc create*(T: type gen_qbrush_types.QBrush, color: cint, bs: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush.init(fcQBrush_new12(cint(color), cint(bs)))

proc operatorAssign*(self: gen_qbrush_types.QBrush, brush: gen_qbrush_types.QBrush): void =
  fcQBrush_operatorAssign(self.h, brush.h)

proc swap*(self: gen_qbrush_types.QBrush, other: gen_qbrush_types.QBrush): void =
  fcQBrush_swap(self.h, other.h)

proc ToQVariant*(self: gen_qbrush_types.QBrush, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQBrush_ToQVariant(self.h))

proc style*(self: gen_qbrush_types.QBrush, ): cint =
  cint(fcQBrush_style(self.h))

proc setStyle*(self: gen_qbrush_types.QBrush, style: cint): void =
  fcQBrush_setStyle(self.h, cint(style))

proc matrix*(self: gen_qbrush_types.QBrush, ): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQBrush_matrix(self.h))

proc setMatrix*(self: gen_qbrush_types.QBrush, mat: gen_qmatrix_types.QMatrix): void =
  fcQBrush_setMatrix(self.h, mat.h)

proc transform*(self: gen_qbrush_types.QBrush, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQBrush_transform(self.h))

proc setTransform*(self: gen_qbrush_types.QBrush, transform: gen_qtransform_types.QTransform): void =
  fcQBrush_setTransform(self.h, transform.h)

proc texture*(self: gen_qbrush_types.QBrush, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQBrush_texture(self.h))

proc setTexture*(self: gen_qbrush_types.QBrush, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQBrush_setTexture(self.h, pixmap.h)

proc textureImage*(self: gen_qbrush_types.QBrush, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQBrush_textureImage(self.h))

proc setTextureImage*(self: gen_qbrush_types.QBrush, image: gen_qimage_types.QImage): void =
  fcQBrush_setTextureImage(self.h, image.h)

proc color*(self: gen_qbrush_types.QBrush, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQBrush_color(self.h))

proc setColor*(self: gen_qbrush_types.QBrush, color: gen_qcolor_types.QColor): void =
  fcQBrush_setColor(self.h, color.h)

proc setColor*(self: gen_qbrush_types.QBrush, color: cint): void =
  fcQBrush_setColorWithColor(self.h, cint(color))

proc gradient*(self: gen_qbrush_types.QBrush, ): gen_qbrush_types.QGradient =
  gen_qbrush_types.QGradient(h: fcQBrush_gradient(self.h))

proc isOpaque*(self: gen_qbrush_types.QBrush, ): bool =
  fcQBrush_isOpaque(self.h)

proc operatorEqual*(self: gen_qbrush_types.QBrush, b: gen_qbrush_types.QBrush): bool =
  fcQBrush_operatorEqual(self.h, b.h)

proc operatorNotEqual*(self: gen_qbrush_types.QBrush, b: gen_qbrush_types.QBrush): bool =
  fcQBrush_operatorNotEqual(self.h, b.h)

proc isDetached*(self: gen_qbrush_types.QBrush, ): bool =
  fcQBrush_isDetached(self.h)

proc delete*(self: gen_qbrush_types.QBrush) =
  fcQBrush_delete(self.h)

func init*(T: type gen_qbrush_types.QBrushData, h: ptr cQBrushData): gen_qbrush_types.QBrushData =
  T(h: h)
proc create*(T: type gen_qbrush_types.QBrushData, param1: gen_qbrush_types.QBrushData): gen_qbrush_types.QBrushData =
  gen_qbrush_types.QBrushData.init(fcQBrushData_new(param1.h))

proc operatorAssign*(self: gen_qbrush_types.QBrushData, param1: gen_qbrush_types.QBrushData): void =
  fcQBrushData_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qbrush_types.QBrushData) =
  fcQBrushData_delete(self.h)

func init*(T: type gen_qbrush_types.QGradient, h: ptr cQGradient): gen_qbrush_types.QGradient =
  T(h: h)
proc create*(T: type gen_qbrush_types.QGradient, ): gen_qbrush_types.QGradient =
  gen_qbrush_types.QGradient.init(fcQGradient_new())

proc create*(T: type gen_qbrush_types.QGradient, param1: cint): gen_qbrush_types.QGradient =
  gen_qbrush_types.QGradient.init(fcQGradient_new2(cint(param1)))

proc create*(T: type gen_qbrush_types.QGradient, param1: gen_qbrush_types.QGradient): gen_qbrush_types.QGradient =
  gen_qbrush_types.QGradient.init(fcQGradient_new3(param1.h))

proc typeX*(self: gen_qbrush_types.QGradient, ): cint =
  cint(fcQGradient_typeX(self.h))

proc setSpread*(self: gen_qbrush_types.QGradient, spread: cint): void =
  fcQGradient_setSpread(self.h, cint(spread))

proc spread*(self: gen_qbrush_types.QGradient, ): cint =
  cint(fcQGradient_spread(self.h))

proc setColorAt*(self: gen_qbrush_types.QGradient, pos: float64, color: gen_qcolor_types.QColor): void =
  fcQGradient_setColorAt(self.h, pos, color.h)

proc setStops*(self: gen_qbrush_types.QGradient, stops: seq[tuple[first: float64, second: gen_qcolor_types.QColor]]): void =
  var stops_CArray = newSeq[struct_miqt_map](len(stops))
  for i in 0..<len(stops):
    var stops_i_CArray_First: float64
    var stops_i_CArray_Second: pointer
    stops_i_CArray_First = stops[i].first
    stops_i_CArray_Second = stops[i].second.h
    stops_CArray[i] = struct_miqt_map(len: 1,keys: addr(stops_i_CArray_First),values: addr(stops_i_CArray_Second),)

  fcQGradient_setStops(self.h, struct_miqt_array(len: csize_t(len(stops)), data: if len(stops) == 0: nil else: addr(stops_CArray[0])))

proc stops*(self: gen_qbrush_types.QGradient, ): seq[tuple[first: float64, second: gen_qcolor_types.QColor]] =
  var v_ma = fcQGradient_stops(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qcolor_types.QColor]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_vv_mm = v_outCast[i]
    var vx_vv_First_CArray = cast[ptr UncheckedArray[float64]](vx_vv_mm.keys)
    var vx_vv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_vv_mm.values)
    var vx_vv_entry_First = vx_vv_First_CArray[0]

    var vx_vv_entry_Second = gen_qcolor_types.QColor(h: vx_vv_Second_CArray[0])

    vx_ret[i] = (first: vx_vv_entry_First , second: vx_vv_entry_Second )
  vx_ret

proc coordinateMode*(self: gen_qbrush_types.QGradient, ): cint =
  cint(fcQGradient_coordinateMode(self.h))

proc setCoordinateMode*(self: gen_qbrush_types.QGradient, mode: cint): void =
  fcQGradient_setCoordinateMode(self.h, cint(mode))

proc interpolationMode*(self: gen_qbrush_types.QGradient, ): cint =
  cint(fcQGradient_interpolationMode(self.h))

proc setInterpolationMode*(self: gen_qbrush_types.QGradient, mode: cint): void =
  fcQGradient_setInterpolationMode(self.h, cint(mode))

proc operatorEqual*(self: gen_qbrush_types.QGradient, gradient: gen_qbrush_types.QGradient): bool =
  fcQGradient_operatorEqual(self.h, gradient.h)

proc operatorNotEqual*(self: gen_qbrush_types.QGradient, other: gen_qbrush_types.QGradient): bool =
  fcQGradient_operatorNotEqual(self.h, other.h)

proc delete*(self: gen_qbrush_types.QGradient) =
  fcQGradient_delete(self.h)

func init*(T: type gen_qbrush_types.QLinearGradient, h: ptr cQLinearGradient): gen_qbrush_types.QLinearGradient =
  T(h: h)
proc create*(T: type gen_qbrush_types.QLinearGradient, ): gen_qbrush_types.QLinearGradient =
  gen_qbrush_types.QLinearGradient.init(fcQLinearGradient_new())

proc create*(T: type gen_qbrush_types.QLinearGradient, start: gen_qpoint_types.QPointF, finalStop: gen_qpoint_types.QPointF): gen_qbrush_types.QLinearGradient =
  gen_qbrush_types.QLinearGradient.init(fcQLinearGradient_new2(start.h, finalStop.h))

proc create*(T: type gen_qbrush_types.QLinearGradient, xStart: float64, yStart: float64, xFinalStop: float64, yFinalStop: float64): gen_qbrush_types.QLinearGradient =
  gen_qbrush_types.QLinearGradient.init(fcQLinearGradient_new3(xStart, yStart, xFinalStop, yFinalStop))

proc create*(T: type gen_qbrush_types.QLinearGradient, param1: gen_qbrush_types.QLinearGradient): gen_qbrush_types.QLinearGradient =
  gen_qbrush_types.QLinearGradient.init(fcQLinearGradient_new4(param1.h))

proc start*(self: gen_qbrush_types.QLinearGradient, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQLinearGradient_start(self.h))

proc setStart*(self: gen_qbrush_types.QLinearGradient, start: gen_qpoint_types.QPointF): void =
  fcQLinearGradient_setStart(self.h, start.h)

proc setStart*(self: gen_qbrush_types.QLinearGradient, x: float64, y: float64): void =
  fcQLinearGradient_setStart2(self.h, x, y)

proc finalStop*(self: gen_qbrush_types.QLinearGradient, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQLinearGradient_finalStop(self.h))

proc setFinalStop*(self: gen_qbrush_types.QLinearGradient, stop: gen_qpoint_types.QPointF): void =
  fcQLinearGradient_setFinalStop(self.h, stop.h)

proc setFinalStop*(self: gen_qbrush_types.QLinearGradient, x: float64, y: float64): void =
  fcQLinearGradient_setFinalStop2(self.h, x, y)

proc delete*(self: gen_qbrush_types.QLinearGradient) =
  fcQLinearGradient_delete(self.h)

func init*(T: type gen_qbrush_types.QRadialGradient, h: ptr cQRadialGradient): gen_qbrush_types.QRadialGradient =
  T(h: h)
proc create*(T: type gen_qbrush_types.QRadialGradient, ): gen_qbrush_types.QRadialGradient =
  gen_qbrush_types.QRadialGradient.init(fcQRadialGradient_new())

proc create*(T: type gen_qbrush_types.QRadialGradient, center: gen_qpoint_types.QPointF, radius: float64, focalPoint: gen_qpoint_types.QPointF): gen_qbrush_types.QRadialGradient =
  gen_qbrush_types.QRadialGradient.init(fcQRadialGradient_new2(center.h, radius, focalPoint.h))

proc create*(T: type gen_qbrush_types.QRadialGradient, cx: float64, cy: float64, radius: float64, fx: float64, fy: float64): gen_qbrush_types.QRadialGradient =
  gen_qbrush_types.QRadialGradient.init(fcQRadialGradient_new3(cx, cy, radius, fx, fy))

proc create*(T: type gen_qbrush_types.QRadialGradient, center: gen_qpoint_types.QPointF, radius: float64): gen_qbrush_types.QRadialGradient =
  gen_qbrush_types.QRadialGradient.init(fcQRadialGradient_new4(center.h, radius))

proc create*(T: type gen_qbrush_types.QRadialGradient, cx: float64, cy: float64, radius: float64): gen_qbrush_types.QRadialGradient =
  gen_qbrush_types.QRadialGradient.init(fcQRadialGradient_new5(cx, cy, radius))

proc create*(T: type gen_qbrush_types.QRadialGradient, center: gen_qpoint_types.QPointF, centerRadius: float64, focalPoint: gen_qpoint_types.QPointF, focalRadius: float64): gen_qbrush_types.QRadialGradient =
  gen_qbrush_types.QRadialGradient.init(fcQRadialGradient_new6(center.h, centerRadius, focalPoint.h, focalRadius))

proc create*(T: type gen_qbrush_types.QRadialGradient, cx: float64, cy: float64, centerRadius: float64, fx: float64, fy: float64, focalRadius: float64): gen_qbrush_types.QRadialGradient =
  gen_qbrush_types.QRadialGradient.init(fcQRadialGradient_new7(cx, cy, centerRadius, fx, fy, focalRadius))

proc create*(T: type gen_qbrush_types.QRadialGradient, param1: gen_qbrush_types.QRadialGradient): gen_qbrush_types.QRadialGradient =
  gen_qbrush_types.QRadialGradient.init(fcQRadialGradient_new8(param1.h))

proc center*(self: gen_qbrush_types.QRadialGradient, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQRadialGradient_center(self.h))

proc setCenter*(self: gen_qbrush_types.QRadialGradient, center: gen_qpoint_types.QPointF): void =
  fcQRadialGradient_setCenter(self.h, center.h)

proc setCenter*(self: gen_qbrush_types.QRadialGradient, x: float64, y: float64): void =
  fcQRadialGradient_setCenter2(self.h, x, y)

proc focalPoint*(self: gen_qbrush_types.QRadialGradient, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQRadialGradient_focalPoint(self.h))

proc setFocalPoint*(self: gen_qbrush_types.QRadialGradient, focalPoint: gen_qpoint_types.QPointF): void =
  fcQRadialGradient_setFocalPoint(self.h, focalPoint.h)

proc setFocalPoint*(self: gen_qbrush_types.QRadialGradient, x: float64, y: float64): void =
  fcQRadialGradient_setFocalPoint2(self.h, x, y)

proc radius*(self: gen_qbrush_types.QRadialGradient, ): float64 =
  fcQRadialGradient_radius(self.h)

proc setRadius*(self: gen_qbrush_types.QRadialGradient, radius: float64): void =
  fcQRadialGradient_setRadius(self.h, radius)

proc centerRadius*(self: gen_qbrush_types.QRadialGradient, ): float64 =
  fcQRadialGradient_centerRadius(self.h)

proc setCenterRadius*(self: gen_qbrush_types.QRadialGradient, radius: float64): void =
  fcQRadialGradient_setCenterRadius(self.h, radius)

proc focalRadius*(self: gen_qbrush_types.QRadialGradient, ): float64 =
  fcQRadialGradient_focalRadius(self.h)

proc setFocalRadius*(self: gen_qbrush_types.QRadialGradient, radius: float64): void =
  fcQRadialGradient_setFocalRadius(self.h, radius)

proc delete*(self: gen_qbrush_types.QRadialGradient) =
  fcQRadialGradient_delete(self.h)

func init*(T: type gen_qbrush_types.QConicalGradient, h: ptr cQConicalGradient): gen_qbrush_types.QConicalGradient =
  T(h: h)
proc create*(T: type gen_qbrush_types.QConicalGradient, ): gen_qbrush_types.QConicalGradient =
  gen_qbrush_types.QConicalGradient.init(fcQConicalGradient_new())

proc create*(T: type gen_qbrush_types.QConicalGradient, center: gen_qpoint_types.QPointF, startAngle: float64): gen_qbrush_types.QConicalGradient =
  gen_qbrush_types.QConicalGradient.init(fcQConicalGradient_new2(center.h, startAngle))

proc create*(T: type gen_qbrush_types.QConicalGradient, cx: float64, cy: float64, startAngle: float64): gen_qbrush_types.QConicalGradient =
  gen_qbrush_types.QConicalGradient.init(fcQConicalGradient_new3(cx, cy, startAngle))

proc create*(T: type gen_qbrush_types.QConicalGradient, param1: gen_qbrush_types.QConicalGradient): gen_qbrush_types.QConicalGradient =
  gen_qbrush_types.QConicalGradient.init(fcQConicalGradient_new4(param1.h))

proc center*(self: gen_qbrush_types.QConicalGradient, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQConicalGradient_center(self.h))

proc setCenter*(self: gen_qbrush_types.QConicalGradient, center: gen_qpoint_types.QPointF): void =
  fcQConicalGradient_setCenter(self.h, center.h)

proc setCenter*(self: gen_qbrush_types.QConicalGradient, x: float64, y: float64): void =
  fcQConicalGradient_setCenter2(self.h, x, y)

proc angle*(self: gen_qbrush_types.QConicalGradient, ): float64 =
  fcQConicalGradient_angle(self.h)

proc setAngle*(self: gen_qbrush_types.QConicalGradient, angle: float64): void =
  fcQConicalGradient_setAngle(self.h, angle)

proc delete*(self: gen_qbrush_types.QConicalGradient) =
  fcQConicalGradient_delete(self.h)

func init*(T: type gen_qbrush_types.QGradientQGradientData, h: ptr cQGradientQGradientData): gen_qbrush_types.QGradientQGradientData =
  T(h: h)
proc create*(T: type gen_qbrush_types.QGradientQGradientData, param1: gen_qbrush_types.QGradientQGradientData): gen_qbrush_types.QGradientQGradientData =
  gen_qbrush_types.QGradientQGradientData.init(fcQGradientQGradientData_new(param1.h))

proc operatorAssign*(self: gen_qbrush_types.QGradientQGradientData, param1: gen_qbrush_types.QGradientQGradientData): void =
  fcQGradientQGradientData_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qbrush_types.QGradientQGradientData) =
  fcQGradientQGradientData_delete(self.h)
