.class public Lcom/oplus/ext/core/ExtLoader$ExtBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ext/core/ExtLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBase:Ljava/lang/Object;

.field private mExtClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mHasDummyExt:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mHasDummyExt:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/ext/core/ExtLoader$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/oplus/ext/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mBase:Ljava/lang/Object;

    return-object p0
.end method

.method public create()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mBase:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/ext/registry/ExtRegistry;->getExt(Ljava/lang/Class;Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/oplus/ext/registry/ExtRegistry;->getExt(Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;

    move-result-object v0

    :goto_15
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ExtLoader"

    if-eqz v0, :cond_48

    iget-object v5, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mBase:Ljava/lang/Object;

    invoke-interface {v0, v5}, Lcom/oplus/ext/core/IExtCreator;->createExtWith(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mBase:Ljava/lang/Object;

    if-eqz v6, :cond_39

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_39
    aput-object v1, v5, v3

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "ext:%s, createExtWith:%s, impl:%s"

    invoke-static {v4, v1, v5}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    move-object v1, v0

    :cond_48
    if-nez v1, :cond_64

    iget-boolean v0, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mHasDummyExt:Z

    if-eqz v0, :cond_64

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-string v1, "create dummy, ext:%s"

    invoke-static {v4, v1, v0}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/ext/core/ExtDummy;->createDummyExt(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_71

    :cond_64
    if-nez v1, :cond_71

    new-array v0, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    aput-object p0, v0, v2

    const-string p0, "create null, ext:%s"

    invoke-static {v4, p0, v0}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_71
    :goto_71
    return-object v1
.end method

.method public disableDummyExt()Lcom/oplus/ext/core/ExtLoader$ExtBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ext/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mHasDummyExt:Z

    return-object p0
.end method

.method public enableDummyExt()Lcom/oplus/ext/core/ExtLoader$ExtBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ext/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mHasDummyExt:Z

    return-object p0
.end method

.method public type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/oplus/ext/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    return-object p0
.end method
