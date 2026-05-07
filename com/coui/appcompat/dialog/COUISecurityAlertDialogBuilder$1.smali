.class Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->a:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_27

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_27

    iget-object p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->a:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    iget-object p2, p2, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->t:Landroidx/appcompat/app/AlertDialog;

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    move p2, p1

    :goto_19
    if-eqz p2, :cond_27

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->a:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->x:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    if-eqz p2, :cond_27

    const/4 p3, -0x2

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->v:Z

    invoke-interface {p2, p3, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;->a(IZ)V

    :cond_27
    return p1
.end method
