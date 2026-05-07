.class public final synthetic Lcom/android/launcher/pageindicators/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/d;->a:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/d;->b:Z

    iput p3, p0, Lcom/android/launcher/pageindicators/d;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/d;->a:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/d;->b:Z

    iget p0, p0, Lcom/android/launcher/pageindicators/d;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->b(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZILandroid/animation/ValueAnimator;)V

    return-void
.end method
