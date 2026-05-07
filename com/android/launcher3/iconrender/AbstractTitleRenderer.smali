.class public abstract Lcom/android/launcher3/iconrender/AbstractTitleRenderer;
.super Lcom/android/launcher3/iconrender/AbstractRenderer;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/ITitleRenderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractTitleRenderer"


# instance fields
.field private mRenderResult:Lcom/android/launcher3/iconrender/TitleRenderResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    new-instance p1, Lcom/android/launcher3/iconrender/TitleRenderResult;

    invoke-direct {p1}, Lcom/android/launcher3/iconrender/TitleRenderResult;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/AbstractTitleRenderer;->mRenderResult:Lcom/android/launcher3/iconrender/TitleRenderResult;

    return-void
.end method


# virtual methods
.method public onTextAlphaChange(F)V
    .registers 2

    return-void
.end method

.method public render(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)Lcom/android/launcher3/iconrender/TitleRenderResult;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractTitleRenderer;->mRenderResult:Lcom/android/launcher3/iconrender/TitleRenderResult;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher3/iconrender/AbstractTitleRenderer;->renderInner(Lcom/android/launcher3/iconrender/TitleRenderResult;Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractTitleRenderer;->mRenderResult:Lcom/android/launcher3/iconrender/TitleRenderResult;

    iget-object p1, p0, Lcom/android/launcher3/iconrender/TitleRenderResult;->mResult:Ljava/lang/CharSequence;

    if-nez p1, :cond_c

    const/4 p0, 0x0

    :cond_c
    return-object p0
.end method

.method public abstract renderInner(Lcom/android/launcher3/iconrender/TitleRenderResult;Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)V
.end method
