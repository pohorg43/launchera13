.class Lcom/android/launcher/folder/recommend/FooterController$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/FooterController$2;->onReady(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/folder/recommend/FooterController$2;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/FooterController$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$2$1;->this$1:Lcom/android/launcher/folder/recommend/FooterController$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$2$1;->this$1:Lcom/android/launcher/folder/recommend/FooterController$2;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$2;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$100(Lcom/android/launcher/folder/recommend/FooterController;)V

    return-void
.end method
