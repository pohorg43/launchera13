.class public final Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/appedit/AppEditModelLoader$ModelLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appedit/AppEditModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppEditLoaderNormal"
.end annotation


# instance fields
.field private init:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppEditLoaderNormal"

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->init:Z

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final initData(Landroid/content/Context;)V
    .registers 4

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AppEdit"

    const-string v1, "LoaderNormal init"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditDBManager;->getCacheInfo()Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbQueryList(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_3c

    :cond_22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/appedit/AppEditInfo;

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/appedit/AppEditInfo;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->putCacheInfo(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;)V

    goto :goto_26

    :cond_3c
    :goto_3c
    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->dCacheLog()V

    return-void
.end method

.method public mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;
    .registers 4

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->init:Z

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->initData(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->init:Z

    :cond_14
    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getCacheInfo(Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    :cond_1d
    return-object p0
.end method

.method public final setInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->init:Z

    return-void
.end method
