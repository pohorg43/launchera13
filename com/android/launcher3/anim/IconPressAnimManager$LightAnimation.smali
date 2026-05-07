.class final Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;
.super Landroid/animation/ValueAnimator;
.source ""

# interfaces
.implements Lcom/android/launcher3/anim/IconPressAnimManager$IPressAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/IconPressAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LightAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;

.field public static final DURATION:J = 0x32L

.field private static final INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SCALE_SCOPE:[F

.field private static final SHADOW_ALPHA_SCOPE:[F


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->Companion:Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_28

    sput-object v1, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->SCALE_SCOPE:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->SHADOW_ALPHA_SCOPE:[F

    return-void

    :array_28
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x3e4ccccd  # 0.2f
    .end array-data
.end method

.method public constructor <init>(ZF)V
    .registers 6

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_22

    new-array p1, v0, [F

    sget-object p2, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->SCALE_SCOPE:[F

    aget v0, p2, v2

    aput v0, p1, v1

    aget p2, p2, v1

    aput p2, p1, v2

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2f

    :cond_22
    new-array p1, v0, [F

    aput p2, p1, v1

    sget-object p2, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->SCALE_SCOPE:[F

    aget p2, p2, v2

    aput p2, p1, v2

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_2f
    return-void
.end method

.method public static final synthetic access$getSCALE_SCOPE$cp()[F
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->SCALE_SCOPE:[F

    return-object v0
.end method


# virtual methods
.method public getShadowAlphaScope()[F
    .registers 1

    sget-object p0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->SHADOW_ALPHA_SCOPE:[F

    return-object p0
.end method
