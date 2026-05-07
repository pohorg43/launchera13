.class public Ll1/a;
.super Li1/a;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Li1/a;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "enterId"

    invoke-virtual {p0, v0}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Li1/m; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const-string p0, ""

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "enterMod"

    invoke-virtual {p0, v0}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Li1/m; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const-string p0, ""

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "enterMod2"

    invoke-virtual {p0, v0}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Li1/m; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const-string p0, ""

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "goback"

    invoke-virtual {p0, v0}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Li1/m; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const-string p0, ""

    return-object p0
.end method
