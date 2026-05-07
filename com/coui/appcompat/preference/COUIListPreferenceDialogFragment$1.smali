.class Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment$1;->a:Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment$1;->a:Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;

    invoke-static {v0, p2}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->access$002(Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;I)I

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment$1;->a:Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
