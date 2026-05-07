.class public Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;,
        Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    }
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_7
    return-void
.end method
