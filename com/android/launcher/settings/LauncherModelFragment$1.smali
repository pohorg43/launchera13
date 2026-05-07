.class Lcom/android/launcher/settings/LauncherModelFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/LauncherModelFragment;->addOnWindowAttachListener(Landroidx/appcompat/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/settings/LauncherModelFragment;

.field public final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic val$rotatingView:Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/settings/LauncherModelFragment;Lcom/oplus/anim/EffectiveAnimationView;Landroidx/appcompat/app/AlertDialog;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment$1;->this$0:Lcom/android/launcher/settings/LauncherModelFragment;

    iput-object p2, p0, Lcom/android/launcher/settings/LauncherModelFragment$1;->val$rotatingView:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p3, p0, Lcom/android/launcher/settings/LauncherModelFragment$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment$1;->val$rotatingView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    return-void
.end method

.method public onWindowDetached()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment$1;->val$rotatingView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method
