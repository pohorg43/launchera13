.class public Lcom/oplus/statistics/util/LogUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG_PREFIX:Ljava/lang/String; = "OplusTrack-"

.field private static isDebug:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    .registers 3
    .param p1  # Lcom/oplus/statistics/util/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/statistics/util/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/oplus/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_13

    const-string v0, "OplusTrack-"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/oplus/statistics/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    .registers 3
    .param p1  # Lcom/oplus/statistics/util/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/statistics/util/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OplusTrack-"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/oplus/statistics/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    .registers 3
    .param p1  # Lcom/oplus/statistics/util/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/statistics/util/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/oplus/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_13

    const-string v0, "OplusTrack-"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/oplus/statistics/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public static isDebug()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/statistics/util/LogUtil;->isDebug:Z

    return v0
.end method

.method public static setDebug(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/statistics/util/LogUtil;->isDebug:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    .registers 3
    .param p1  # Lcom/oplus/statistics/util/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/statistics/util/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/oplus/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_13

    const-string v0, "OplusTrack-"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/oplus/statistics/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public static w(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    .registers 3
    .param p1  # Lcom/oplus/statistics/util/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/statistics/util/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OplusTrack-"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/oplus/statistics/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
