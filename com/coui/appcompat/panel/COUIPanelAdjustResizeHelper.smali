.class public Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    return-void
.end method
