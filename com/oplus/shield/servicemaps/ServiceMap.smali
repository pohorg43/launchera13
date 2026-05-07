.class public Lcom/oplus/shield/servicemaps/ServiceMap;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final initList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSkipService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialVerifyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSystemMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/shield/servicemaps/ISystemServiceMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->mSystemMap:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->mSkipService:Ljava/util/List;

    const-string v0, "android.view.IWindowManager"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->initList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_f
    sget-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->mSystemMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/shield/servicemaps/ISystemServiceMap;

    invoke-interface {v1}, Lcom/oplus/shield/servicemaps/ISystemServiceMap;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1, p1}, Lcom/oplus/shield/servicemaps/ISystemServiceMap;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    new-instance v0, Lcom/oplus/shield/servicemaps/SystemServiceMap;

    invoke-direct {v0, p0}, Lcom/oplus/shield/servicemaps/SystemServiceMap;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/shield/servicemaps/ServiceMap;->mSystemMap:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/oplus/shield/servicemaps/SystemServiceMap;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initServiceMap()V
    .registers 4

    sget-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->initList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/oplus/shield/servicemaps/ServiceMap;->mSystemMap:Ljava/util/List;

    new-instance v3, Lcom/oplus/shield/servicemaps/SystemServiceMap;

    invoke-direct {v3, v1}, Lcom/oplus/shield/servicemaps/SystemServiceMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1d
    sget-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    const-string v1, "android.view.IWindowSession"

    const-string v2, "IWindowSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.view.IWindowManager"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/oplus/shield/servicemaps/ServiceMap;->mSkipService:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.content.pm.IPackageInstaller"

    const-string v2, "PackageInstaller.Session"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.content.pm.IPackageInstallerSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static skipTingleVerifyService(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/oplus/shield/servicemaps/ServiceMap;->mSkipService:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
