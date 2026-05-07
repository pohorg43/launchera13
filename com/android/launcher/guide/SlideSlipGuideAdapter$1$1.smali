.class Lcom/android/launcher/guide/SlideSlipGuideAdapter$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;

.field public final synthetic val$newAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1$1;->this$1:Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;

    iput-object p2, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1$1;->val$newAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1$1;->this$1:Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;

    iget-object v0, v0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;->val$guideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1$1;->val$newAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1$1;->val$newAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1$1;->val$newAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_16
    const-string v0, "instantiateItem end set  position = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1$1;->this$1:Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;

    iget p0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;->val$position:I

    const-string v1, "SlideSlipGuideAdapter"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
