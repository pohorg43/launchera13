.class public Lcom/oplus/shield/servicemaps/SystemServiceMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/shield/servicemaps/ISystemServiceMap;


# static fields
.field private static final STUB_REGEX:Ljava/lang/String; = "$Stub"

.field private static final TRANSACTION_REGEX:Ljava/lang/String; = "TRANSACTION_"


# instance fields
.field private mServiceName:Ljava/lang/String;

.field private mTransactCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/shield/servicemaps/SystemServiceMap;->mTransactCodeMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/oplus/shield/servicemaps/SystemServiceMap;->mServiceName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/shield/servicemaps/SystemServiceMap;->initTransactCodeMap()V

    return-void
.end method

.method private initTransactCodeMap()V
    .registers 9

    const-string v0, "TRANSACTION_"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/shield/servicemaps/SystemServiceMap;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$Stub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_4f

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/oplus/shield/servicemaps/SystemServiceMap;->mTransactCodeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_48} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_48} :catch_4b

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :catch_4b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_4f
    return-void
.end method


# virtual methods
.method public getClassName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/shield/servicemaps/SystemServiceMap;->mTransactCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/oplus/shield/servicemaps/SystemServiceMap;->mTransactCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/shield/servicemaps/SystemServiceMap;->mServiceName:Ljava/lang/String;

    return-object p0
.end method
