.class Lcom/android/launcher/views/AlertPanelView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/AlertPanelView;->handleClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/views/AlertPanelView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/AlertPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AlertPanelView$1;->this$0:Lcom/android/launcher/views/AlertPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView$1;->this$0:Lcom/android/launcher/views/AlertPanelView;

    invoke-static {p0}, Lcom/android/launcher/views/AlertPanelView;->access$000(Lcom/android/launcher/views/AlertPanelView;)V

    return-void
.end method
