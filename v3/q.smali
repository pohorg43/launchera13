.class public final Lv3/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lq3/r1;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-string v0, "kotlinx.coroutines.fast.service.loader"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lp/d;->f(Ljava/lang/String;Z)Z

    :try_start_6
    invoke-static {}, Lv3/p;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lo3/i;->q(Ljava/util/Iterator;)Lo3/e;

    move-result-object v0

    invoke-static {v0}, Lo3/l;->t(Lo3/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1f

    move-object v2, v3

    goto :goto_46

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_46

    :cond_2a
    move-object v4, v2

    check-cast v4, Lv3/o;

    invoke-interface {v4}, Lv3/o;->getLoadPriority()I

    move-result v4

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lv3/o;

    invoke-interface {v6}, Lv3/o;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_40

    move-object v2, v5

    move v4, v6

    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_31

    :goto_46
    check-cast v2, Lv3/o;
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_61

    if-nez v2, :cond_4b

    goto :goto_4f

    :cond_4b
    :try_start_4b
    invoke-interface {v2, v0}, Lv3/o;->createDispatcher(Ljava/util/List;)Lq3/r1;

    move-result-object v3
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_5c

    :goto_4f
    if-eqz v3, :cond_54

    sput-object v3, Lv3/q;->a:Lq3/r1;

    return-void

    :cond_54
    :try_start_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5c
    move-exception v0

    invoke-interface {v2}, Lv3/o;->hintOnError()Ljava/lang/String;

    throw v0
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v0

    throw v0
.end method
