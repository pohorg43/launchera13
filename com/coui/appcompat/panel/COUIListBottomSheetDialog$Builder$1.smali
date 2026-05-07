.class Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->a()Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;->a:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;II)V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;->a:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->j:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p1, :cond_23

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_13

    const/4 p3, 0x1

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    :goto_14
    invoke-interface {p1, p0, p2, p3}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    goto :goto_23

    :cond_18
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->d:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_23

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_23
    :goto_23
    return-void
.end method
