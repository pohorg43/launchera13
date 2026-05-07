.class Lcom/oplus/ext/registry/MultiObjCreator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EXT_GETTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/oplus/ext/registry/IExtCreatorObjGetter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/ext/registry/MultiObjCreator;->EXT_GETTERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/oplus/ext/registry/IExtCreatorObjGetter<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ext/registry/MultiObjCreator;->putGetter(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    return-void
.end method


# virtual methods
.method public getObject(Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/oplus/ext/core/IExtCreator<",
            "TT;>;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    sget-object v0, Lcom/oplus/ext/registry/MultiObjCreator;->EXT_GETTERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/ext/registry/IExtCreatorObjGetter;

    if-nez p1, :cond_f

    return-object p0

    :cond_f
    invoke-interface {p1}, Lcom/oplus/ext/registry/IExtCreatorObjGetter;->get()Lcom/oplus/ext/core/IExtCreator;

    move-result-object p0

    return-object p0
.end method

.method public putGetter(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/oplus/ext/registry/IExtCreatorObjGetter<",
            "TT;>;)V"
        }
    .end annotation

    sget-object p0, Lcom/oplus/ext/registry/MultiObjCreator;->EXT_GETTERS:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
