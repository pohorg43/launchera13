.class Lcom/android/launcher/folder/recommend/FooterController$2$2;
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

.field public final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/FooterController$2;Landroid/animation/Animator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$2$2;->this$1:Lcom/android/launcher/folder/recommend/FooterController$2;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FooterController$2$2;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$2$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
