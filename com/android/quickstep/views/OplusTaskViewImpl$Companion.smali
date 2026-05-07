.class public final Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurveScaleForCurveInterpolation(Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getCurveScaleForCurveInterpolation(F)F

    move-result p0

    return p0
.end method

.method private final getCurveScaleForCurveInterpolation(F)F
    .registers 3

    const/4 p0, 0x1

    int-to-float p0, p0

    const v0, 0x3cf5c28f  # 0.03f

    mul-float/2addr p1, v0

    sub-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final getADJACENT_TRANSLATE_X()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getADJACENT_TRANSLATE_X$cp()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method public final getCurveScaleForInterpolation(F)F
    .registers 3

    invoke-static {}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getCURVE_INTERPOLATOR$cp()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getCurveScaleForCurveInterpolation(F)F

    move-result p0

    return p0
.end method
