.class public Lcom/android/launcher3/iconrender/impl/DefaultRendererFactory;
.super Lcom/android/launcher3/iconrender/AbstractRendererFactory;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/iconrender/AbstractRendererFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createIconRenderer(Ljava/lang/Class;Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)Lcom/android/launcher3/iconrender/IIconRenderer;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/IIconRenderer;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/iconrender/RenderManager;",
            ")",
            "Lcom/android/launcher3/iconrender/IIconRenderer;"
        }
    .end annotation

    const-class p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_e
    const-class p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_1c
    const-class p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    new-instance p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_2a
    const-class p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    new-instance p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_38
    const-class p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    new-instance p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_46
    const-class p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconLargeDeviceRenderer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    new-instance p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconLargeDeviceRenderer;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/SelectStateIconLargeDeviceRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public createTitleRenderer(Ljava/lang/Class;Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)Lcom/android/launcher3/iconrender/ITitleRenderer;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/ITitleRenderer;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/iconrender/RenderManager;",
            ")",
            "Lcom/android/launcher3/iconrender/ITitleRenderer;"
        }
    .end annotation

    const-class p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_e
    const-class p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_1c
    const-class p0, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    new-instance p0, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method
