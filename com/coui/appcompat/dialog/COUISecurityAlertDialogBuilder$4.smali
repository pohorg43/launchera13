.class Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;->a:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;->a:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->v:Z

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->x:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    if-eqz p0, :cond_c

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;->a(IZ)V

    :cond_c
    return-void
.end method
