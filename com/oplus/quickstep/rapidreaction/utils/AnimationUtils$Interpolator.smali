.class public final Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interpolator"
.end annotation


# static fields
.field private static final BUTTON_ENTER_INTERPOLATOR_1:Landroid/view/animation/PathInterpolator;

.field private static final BUTTON_ENTER_INTERPOLATOR_2:Landroid/view/animation/PathInterpolator;

.field private static final GESTURE_TO_PREVIEW_WINDOW_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

.field private static final OVERLAP_WITH_BUTTON_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final PATH_018_028_01_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final PATH_033_0_067_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final PATH_03_0_01_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SCROLL_STEPS:Landroid/view/animation/Interpolator;

.field private static final SCROLL_STEP_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TITLE_ENTER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3f028f5c  # 0.51f

    const v4, 0x3f7ae148  # 0.98f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->BUTTON_ENTER_INTERPOLATOR_1:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f8b851f  # 1.09f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->BUTTON_ENTER_INTERPOLATOR_2:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->OVERLAP_WITH_BUTTON_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->GESTURE_TO_PREVIEW_WINDOW_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3  # 0.33f

    const v6, 0x3f2b851f  # 0.67f

    invoke-direct {v0, v5, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->TITLE_ENTER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e2e147b  # 0.17f

    invoke-direct {v0, v7, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->SCROLL_STEP_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/a;->a:Lcom/oplus/quickstep/rapidreaction/utils/a;

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->SCROLL_STEPS:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->PATH_033_0_067_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->PATH_03_0_01_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e3851ec  # 0.18f

    const v2, 0x3e8f5c29  # 0.28f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->PATH_018_028_01_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final SCROLL_STEPS$lambda-0(F)F
    .registers 4

    const/high16 v0, 0x3ec00000  # 0.375f

    cmpg-float v1, p0, v0

    const v2, 0x3e19999a  # 0.15f

    if-gez v1, :cond_16

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v1}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getSCROLL_STEP_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    div-float/2addr p0, v0

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v2

    return p0

    :cond_16
    sub-float/2addr p0, v0

    const/high16 v0, 0x3f200000  # 0.625f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p0, v0

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    const/4 p0, 0x1

    int-to-float p0, p0

    add-float/2addr v0, p0

    const p0, 0x3f59999a  # 0.85f

    mul-float/2addr v0, p0

    add-float/2addr v0, v2

    return v0
.end method

.method public static synthetic a(F)F
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->SCROLL_STEPS$lambda-0(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final getBUTTON_ENTER_INTERPOLATOR_1()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->BUTTON_ENTER_INTERPOLATOR_1:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getBUTTON_ENTER_INTERPOLATOR_2()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->BUTTON_ENTER_INTERPOLATOR_2:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getGESTURE_TO_PREVIEW_WINDOW_INTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->GESTURE_TO_PREVIEW_WINDOW_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getOVERLAP_WITH_BUTTON_INTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->OVERLAP_WITH_BUTTON_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getPATH_018_028_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->PATH_018_028_01_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getPATH_033_0_067_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->PATH_033_0_067_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->PATH_03_0_01_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getSCROLL_STEPS()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->SCROLL_STEPS:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final getSCROLL_STEP_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->SCROLL_STEP_1_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getTITLE_ENTER_INTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->TITLE_ENTER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method
