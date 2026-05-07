.class public Ll1/c;
.super Ll1/b;
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

    invoke-direct {p0, p1}, Ll1/b;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public o()I
    .registers 3

    :try_start_0
    const-string/jumbo v0, "type"
    :try_end_3
    .catch Li1/m; {:try_start_0 .. :try_end_3} :catch_21

    :try_start_3
    invoke-virtual {p0, v0}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_12

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_1a

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    :goto_1a
    return p0

    :catchall_1b
    :try_start_1b
    new-instance p0, Li1/m;

    invoke-direct {p0, v0}, Li1/m;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catch Li1/m; {:try_start_1b .. :try_end_21} :catch_21

    :catch_21
    const/4 p0, -0x1

    return p0
.end method
