.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->b:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    iput p2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->b:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->c:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->a:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$102(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;I)I

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->b:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->c:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->b:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->b:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
