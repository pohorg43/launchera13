.class public final Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/OplusLauncherAnimUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interpolators"
.end annotation


# static fields
.field public static final CURVE_EASE_OUT:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_MOVE_HOME_TO_OVERVIEW:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_MOVE_IN:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_MOVE_OVERVIEW_TO_HOME:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_OPACITY_IN:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_TOUCH_END:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final CURVE_TOUCH_START:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final GESTURE_TO_RECNETS:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;

.field public static final PATH_1:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_10:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_11:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_2:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_3:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_4:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_5:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_6:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_7:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_8:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PATH_9:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final PENDING_CARD_PATH_2:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final TOUCH_ICON_FALLEN:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final TOUCH_ICON_FALLEN_RESET:Landroid/view/animation/Interpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 26

    new-instance v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;

    invoke-direct {v0}, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;-><init>()V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->INSTANCE:Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fd6666666666666L  # 0.35

    const-wide v4, 0x3fe3d70a3d70a3d7L  # 0.62

    const-wide v6, 0x3fc999999999999aL  # 0.2

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide v16, 0x3fa999999999999aL  # 0.05

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_MOVE_IN:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fc999999999999aL  # 0.2

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v16, 0x3fd51eb851eb851fL  # 0.33

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_OPACITY_IN:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fd51eb851eb851fL  # 0.33

    const-wide v6, 0x3fe570a3d70a3d71L  # 0.67

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v12, 0x3fdae147ae147ae1L  # 0.42

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_EASE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide/high16 v2, 0x3fd0000000000000L  # 0.25

    const-wide v4, 0x3fb999999999999aL  # 0.1

    const-wide v6, 0x3fb999999999999aL  # 0.1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_TOUCH_START:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide/high16 v12, 0x3fd0000000000000L  # 0.25

    const-wide v14, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v16, 0x3fd0000000000000L  # 0.25

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_TOUCH_END:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v2, 0x3fb999999999999aL  # 0.1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v12, 0x3fd51eb851eb851fL  # 0.33

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->TOUCH_ICON_FALLEN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a  # 0.3f

    const v5, 0x3e19999a  # 0.15f

    invoke-direct {v0, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->TOUCH_ICON_FALLEN_RESET:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v7, 0x3fb999999999999aL  # 0.1

    const-wide/16 v9, 0x0

    const-wide v11, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v13, 0x3ff0000000000000L  # 1.0

    const/4 v15, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v15}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_MOVE_HOME_TO_OVERVIEW:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v17, 0x3fd51eb851eb851fL  # 0.33

    const-wide/16 v19, 0x0

    const-wide v21, 0x3fe570a3d70a3d71L  # 0.67

    const-wide/high16 v23, 0x3ff0000000000000L  # 1.0

    const/16 v25, 0x1

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v25}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_MOVE_OVERVIEW_TO_HOME:Landroid/view/animation/OplusBezierInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v5, v3, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_1:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3  # 0.33f

    const v7, 0x3f2b851f  # 0.67f

    invoke-direct {v0, v6, v2, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_3:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e4ccccd  # 0.2f

    invoke-direct {v0, v1, v2, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_5:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000  # 0.25f

    invoke-direct {v0, v6, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_6:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b  # 0.17f

    invoke-direct {v0, v1, v1, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_7:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v8, 0x3f547ae1  # 0.83f

    invoke-direct {v0, v6, v2, v8, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_8:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3df5c28f  # 0.12f

    invoke-direct {v0, v1, v6, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_9:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e6b851f  # 0.23f

    const v9, 0x3ec7ae14  # 0.39f

    const v10, 0x3f5eb852  # 0.87f

    invoke-direct {v0, v6, v9, v7, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_10:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_11:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->GESTURE_TO_RECNETS:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_2:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
