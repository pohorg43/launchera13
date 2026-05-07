.class public Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
.super Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;,
        Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;
    }
.end annotation


# static fields
.field public static final synthetic z:I


# instance fields
.field public s:Landroid/content/Context;

.field public t:Landroidx/appcompat/app/AlertDialog;

.field public u:Z

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

.field public y:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/support/appcompat/R$style;->COUIAlertDialog_Security:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->u:Z

    new-instance v0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->y:Landroid/content/DialogInterface$OnKeyListener;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->s:Landroid/content/Context;

    sget v0, Lcom/support/appcompat/R$string;->coui_security_alertdialog_checkbox_msg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/AlertDialog;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->y:Landroid/content/DialogInterface$OnKeyListener;

    invoke-super {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->t:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public n()V
    .registers 1

    invoke-super {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n()V

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->o()V

    return-void
.end method

.method public final o()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->t:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-nez v0, :cond_7

    goto :goto_36

    :cond_7
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_builder_message_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v3, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v3

    float-to-int v3, v3

    check-cast v0, Landroid/widget/TextView;

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->t:Landroidx/appcompat/app/AlertDialog;

    const/16 v3, 0x8

    if-nez v0, :cond_3d

    goto :goto_4b

    :cond_3d
    sget v4, Lcom/support/appcompat/R$id;->coui_security_alertdialog_statement:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_48

    goto :goto_4b

    :cond_48
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4b
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->t:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_50

    goto :goto_9a

    :cond_50
    sget v4, Lcom/support/appcompat/R$id;->coui_security_alert_dialog_checkbox:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez v4, :cond_5b

    goto :goto_9a

    :cond_5b
    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->u:Z

    if-nez v4, :cond_63

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9a

    :cond_63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->v:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_security_alert_dialog_checkbox_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v3, v4, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_9a
    return-void
.end method

.method public p(I)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public q(I)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->y:Landroid/content/DialogInterface$OnKeyListener;

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public show()Landroidx/appcompat/app/AlertDialog;
    .registers 2

    invoke-super {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->t:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->o()V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->t:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method
