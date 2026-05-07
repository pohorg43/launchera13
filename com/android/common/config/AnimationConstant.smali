.class public Lcom/android/common/config/AnimationConstant;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CREATE_FOLDER_PREVIEW:Landroid/view/animation/PathInterpolator;

.field public static final CURVE_EASE_OUT:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_MOVE_HOME_TO_OVERVIEW:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_MOVE_IN:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_MOVE_OVERVIEW_TO_HOME:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_OPACITY_IN:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_TOUCH_END:Landroid/view/animation/OplusBezierInterpolator;

.field public static final CURVE_TOUCH_START:Landroid/view/animation/OplusBezierInterpolator;

.field public static final ClEAR_FOLDER_PREVIEW:Landroid/view/animation/PathInterpolator;

.field public static final DEFAULT_ANIMATION_TIME:I = 0xfa

.field public static final DELETEVIEW_ANIM_SPEECH:Ljava/lang/Float;

.field public static final DOCKER_ANIMATION_DELAY:I = 0xc8

.field public static final DRAG_SNAP_PAGE_DURATION:I = 0x226

.field private static final FOLDER_ANIM_WP_MIN_SCALE:F = 0.92f

.field public static final FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

.field public static final FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

.field public static final FOLDER_PREVIEW_ANIMATION_DURATION:J = 0x12cL

.field public static final HOTSEAT_EXPAND_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final ICON_SCALE_FOR_FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

.field public static final ICON_TEXT_ALPHA_DURATION:I = 0xc8

.field public static final INTEGER_MAX_ALPHA:I = 0xff

.field public static final INTEGER_MIN_ALPHA:I = 0x0

.field public static final INTERPOLATOR_ALL_APPS_FADE:Landroid/view/animation/Interpolator;

.field public static final INTERPOLATOR_ALL_APPS_SCALE:Landroid/view/animation/Interpolator;

.field public static final NORMAL_SCALE:F = 1.0f

.field public static final PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_10:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_11:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_12:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_20:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_21:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_22:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_23:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_24:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_25:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_26:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_3:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_5:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_6:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

.field public static final PATH_INTERPOLATOR_9:Landroid/view/animation/Interpolator;

.field public static final PRESSED_MIN_SCALE:F = 0.9f

.field public static final TEXT_ALPHA_ANIMATION:J = 0x96L

.field public static final TIME_ICON_FALLEN_RESET:I = 0x14a

.field public static final TIME_MOMENT:I = 0x64

.field public static final TIME_MOVE:I = 0x14a

.field public static final TIME_MOVE_FAST:I = 0xf0

.field public static final TIME_MOVE_SLOW:I = 0x1a4

.field public static final TIME_MOVE_VERY_FAST:I = 0x96

.field public static final TIME_PRESS_SCALE:I = 0xc8

.field public static final TIME_TOUCH_START:I = 0x42

.field public static final TIME_UNINSTALL_DIALOG_CLOSE_DELAY:I = 0x1c2

.field public static final TOGGLE_BAR_SWITCH_DOT_ANIM_TIME:I = 0x1a1

.field private static final TOGGLE_FOLDER_ANIM_WP_MIN_SCALE_SINGLE_PANEL:F = 0.85f

.field private static final TOGGLE_FOLDER_ANIM_WP_MIN_SCALE_TWO_PANELS:F = 0.76f

.field public static final TOUCH_ICON_AUTO_FALLEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TOUCH_ICON_FALLEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TOUCH_ICON_FALLEN_RESET_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_FADE_TO_ALL_APPS:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .registers 29

    const v0, 0x3fe66666  # 1.8f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/AnimationConstant;->DELETEVIEW_ANIM_SPEECH:Ljava/lang/Float;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fd6666666666666L  # 0.35

    const-wide v4, 0x3fe3d70a3d70a3d7L  # 0.62

    const-wide v6, 0x3fc999999999999aL  # 0.2

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide v16, 0x3fa999999999999aL  # 0.05

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_IN:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fc999999999999aL  # 0.2

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v16, 0x3fd51eb851eb851fL  # 0.33

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_IN:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fd51eb851eb851fL  # 0.33

    const-wide v6, 0x3fe570a3d70a3d71L  # 0.67

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v12, 0x3fdae147ae147ae1L  # 0.42

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_EASE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide/high16 v2, 0x3fd0000000000000L  # 0.25

    const-wide v4, 0x3fb999999999999aL  # 0.1

    const-wide v6, 0x3fb999999999999aL  # 0.1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_TOUCH_START:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide/high16 v12, 0x3fd0000000000000L  # 0.25

    const-wide v14, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v16, 0x3fd0000000000000L  # 0.25

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_TOUCH_END:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fb999999999999aL  # 0.1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v12, 0x3fd51eb851eb851fL  # 0.33

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fd6666666666666L  # 0.35

    const-wide v4, 0x3fe3d70a3d70a3d7L  # 0.62

    const-wide v6, 0x3f9eb851eb851eb8L  # 0.03

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->ICON_SCALE_FOR_FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_FALLEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a  # 0.3f

    const v5, 0x3e19999a  # 0.15f

    invoke-direct {v0, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_FALLEN_RESET_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_AUTO_FALLEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3  # 0.33f

    const v8, 0x3f2b851f  # 0.67f

    invoke-direct {v0, v7, v2, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_3:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e4ccccd  # 0.2f

    invoke-direct {v0, v1, v2, v9, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_5:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000  # 0.25f

    invoke-direct {v0, v7, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_6:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b  # 0.17f

    const v10, 0x3f547ae1  # 0.83f

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v11, 0x3df5c28f  # 0.12f

    invoke-direct {v0, v1, v11, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_9:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e6b851f  # 0.23f

    const v12, 0x3ec7ae14  # 0.39f

    const v13, 0x3f5eb852  # 0.87f

    invoke-direct {v0, v11, v12, v9, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_10:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e051eb8  # 0.13f

    invoke-direct {v0, v7, v2, v11, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_11:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v9, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_12:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e8f5c29  # 0.28f

    const v11, 0x3f1c28f6  # 0.61f

    invoke-direct {v0, v9, v6, v11, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_20:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_21:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v2, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_22:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, 0x3d4ccccd  # 0.05f

    invoke-direct {v0, v5, v2, v9, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_23:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v2, v10, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_24:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_25:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_26:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v10, 0x3fb999999999999aL  # 0.1

    const-wide/16 v12, 0x0

    const-wide v14, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    const/16 v18, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v18}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_HOME_TO_OVERVIEW:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v20, 0x3fd51eb851eb851fL  # 0.33

    const-wide/16 v22, 0x0

    const-wide v24, 0x3fe570a3d70a3d71L  # 0.67

    const-wide/high16 v26, 0x3ff0000000000000L  # 1.0

    const/16 v28, 0x1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v28}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_OVERVIEW_TO_HOME:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->CREATE_FOLDER_PREVIEW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->ClEAR_FOLDER_PREVIEW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v2, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_SCALE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->WORKSPACE_FADE_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v2, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/config/AnimationConstant;->lambda$createPressChangedScaleAnimation$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static animIndicatorScaleRange(Lcom/android/launcher3/Launcher;Z)[F
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-static {v1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->isToggleBarState(Lcom/android/launcher3/LauncherState;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-static {v2, v3}, Lcom/android/common/config/AnimationConstant;->getMinWpScaleForFolderAnim(ZZ)F

    move-result v2

    invoke-virtual {v1, p0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    if-eqz p1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    move v1, p0

    :goto_26
    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    if-eqz p1, :cond_2d

    move v2, p0

    :cond_2d
    aput v2, v0, v1

    return-object v0
.end method

.method public static createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    const/4 v0, 0x2

    const-string v1, "alpha"

    if-eqz p1, :cond_19

    new-array p1, v0, [F

    fill-array-data p1, :array_2a

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_22

    :cond_19
    new-array p1, v0, [F

    fill-array-data p1, :array_32

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_22
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_2a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_32
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public static createPressChangedScaleAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    const p1, 0x3f666666  # 0.9f

    goto :goto_17

    :cond_15
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_17
    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_5:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/common/config/a;

    invoke-direct {v0, p0, v2}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public static createTranslationAnimator(Landroid/view/View;ZIIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_a

    const-string/jumbo p1, "translationY"

    goto :goto_d

    :cond_a
    const-string/jumbo p1, "translationX"

    :goto_d
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float p2, p2

    aput p2, v0, v1

    const/4 p2, 0x1

    int-to-float p3, p3

    aput p3, v0, p2

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static dispatchChildrenAlpha(Landroid/view/View;F)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_25

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_28

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-static {v2, p1}, Lcom/android/common/config/AnimationConstant;->dispatchChildrenAlpha(Landroid/view/View;F)V

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_25
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_28
    return-void
.end method

.method private static getMinWpScaleForFolderAnim(ZZ)F
    .registers 2

    if-eqz p0, :cond_c

    if-eqz p1, :cond_8

    const p0, 0x3f428f5c  # 0.76f

    goto :goto_b

    :cond_8
    const p0, 0x3f59999a  # 0.85f

    :goto_b
    return p0

    :cond_c
    const p0, 0x3f6b851f  # 0.92f

    return p0
.end method

.method public static hotseatScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz p1, :cond_1c

    const/4 p1, 0x0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    aput p0, v0, p1

    const/4 p0, 0x1

    const/high16 p1, 0x3f800000  # 1.0f

    aput p1, v0, p0

    return-object v0

    :cond_1c
    invoke-static {p0, p1}, Lcom/android/common/config/AnimationConstant;->workspaceScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object p0

    return-object p0
.end method

.method public static isAnimatorRunning(Landroid/animation/Animator;)Z
    .registers 1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static synthetic lambda$createPressChangedScaleAnimation$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static workspaceScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_18

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    aput p0, v0, v4

    aput p0, v0, v3

    return-object v0

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-static {v1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->isToggleBarState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-static {v1, v2}, Lcom/android/common/config/AnimationConstant;->getMinWpScaleForFolderAnim(ZZ)F

    move-result v2

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    goto :goto_3d

    :cond_3b
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_3d
    if-eqz p1, :cond_41

    move v1, v2

    goto :goto_42

    :cond_41
    move v1, p0

    :goto_42
    aput v1, v0, v4

    if-eqz p1, :cond_47

    move v2, p0

    :cond_47
    aput v2, v0, v3

    return-object v0
.end method
