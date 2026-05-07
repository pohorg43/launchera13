.class Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;
.super Landroid/animation/ValueAnimator;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DotFadeAnimator"
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa


# instance fields
.field public mPageIndex:I

.field public final synthetic this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput p2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;->mPageIndex:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_1e

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p1, 0xfa

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_1e
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;->mPageIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->access$300(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;II)V

    return-void
.end method
