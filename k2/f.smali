.class public Lk2/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Lk2/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lk2/f;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk2/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lk2/f;->b:Lk2/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    const-string v0, "methodName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 p0, 0x5

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    return-void

    :catch_d
    move-exception p0

    goto :goto_42

    :cond_f
    invoke-static {v0}, Lj/b;->com$otest$proxy$common$protocol$TestLogObserverProtocol$MethodName$s$valueOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lj/b;->f(I)I

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    const/4 p1, 0x2

    if-eq v1, p1, :cond_36

    sget-object p0, Lk2/f;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call:Illegal methodStr :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_36
    invoke-virtual {p0, p2}, Lk2/f;->d(Landroid/os/Bundle;)Z

    goto :goto_51

    :cond_3a
    invoke-virtual {p0, p1, p2}, Lk2/f;->c(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_51

    :cond_3e
    invoke-virtual {p0, p2}, Lk2/f;->b(Landroid/os/Bundle;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_d

    goto :goto_51

    :goto_42
    sget-object p1, Lk2/f;->a:Ljava/lang/String;

    const-string v0, "handleRequest exception:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "handleRequest exception"

    invoke-static {p2, p1}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    :goto_51
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 5

    sget-boolean p0, Lj2/c;->b:Z

    if-eqz p0, :cond_d

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :cond_d
    :try_start_d
    sget-object p0, Lj2/a;->b:Lj2/a;

    if-nez p0, :cond_25

    const-class p0, Lj2/a;

    monitor-enter p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_54

    :try_start_14
    sget-object v0, Lj2/a;->b:Lj2/a;

    if-nez v0, :cond_1f

    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    sput-object v0, Lj2/a;->b:Lj2/a;

    :cond_1f
    monitor-exit p0

    move-object p0, v0

    goto :goto_25

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    :try_start_24
    throw v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_54

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :try_start_26
    sget-object v1, Lj2/c;->a:Ljava/util/List;

    monitor-enter v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_3e

    :try_start_29
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    monitor-exit v1

    move p0, v0

    goto :goto_47

    :catchall_3b
    move-exception p0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception p0

    :try_start_3f
    const-string v1, "c"

    const-string v2, "add test log listener fail."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_47
    if-eqz p0, :cond_4b

    sput-boolean v0, Lj2/c;->b:Z

    :cond_4b
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_53} :catch_54

    goto :goto_64

    :catch_54
    move-exception p0

    sget-object v0, Lk2/f;->a:Ljava/lang/String;

    const-string v1, "initObserver exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "initObserver exception"

    invoke-static {p1, v0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-static {p1, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    :goto_64
    return-void
.end method

.method public final c(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9

    :try_start_0
    const-string p0, "queryType"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BY_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_83

    const-string p0, "appName"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "logTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestampStart"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestampEnd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v2, Lj2/c;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lj2/c;->a:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3d
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj2/b;

    if-nez v4, :cond_4c

    goto :goto_3d

    :cond_4c
    invoke-virtual {v4, p0, v0, v1, p1}, Lj2/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3d

    :cond_5c
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_65

    :cond_7f
    invoke-static {p2, p0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_96

    :cond_83
    const-string p0, "queryType is invalid"

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    const/4 p0, 0x5

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_96

    :catch_8d
    move-exception p0

    const-string p1, "query exception"

    invoke-static {p2, p1}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    :goto_96
    return-void
.end method

.method public final d(Landroid/os/Bundle;)Z
    .registers 5

    const/4 p0, 0x0

    :try_start_1
    sput-boolean p0, Lj2/c;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_2d

    :try_start_3
    sget-object v0, Lj2/c;->a:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception v0

    :try_start_e
    const-string v1, "c"

    const-string v2, "removeAll test log listener fail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, p0

    :goto_16
    if-eqz v0, :cond_22

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 p0, 0x1

    return p0

    :cond_22
    const-string v0, "releaseServer remove all fail"

    invoke-static {p1, v0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    move-exception v0

    const-string v1, "handleRequest exception"

    invoke-static {p1, v1}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-static {p1, v0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    return p0
.end method
