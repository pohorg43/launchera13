.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o:Z

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p:Z

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    :cond_15
    return-void
.end method
