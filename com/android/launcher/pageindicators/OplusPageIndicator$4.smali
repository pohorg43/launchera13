.class Lcom/android/launcher/pageindicators/OplusPageIndicator$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pageindicators/OplusPageIndicator;->startAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$4;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    const p0, 0x3f4ccccd  # 0.8f

    cmpg-float p0, p1, p0

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    const/high16 v2, 0x40a00000  # 5.0f

    if-gez p0, :cond_15

    mul-float/2addr p1, v2

    float-to-double p0, p1

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    div-double/2addr p0, v0

    goto :goto_1b

    :cond_15
    const/high16 p0, 0x40800000  # 4.0f

    mul-float/2addr p1, v2

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr p0, v0

    :goto_1b
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
