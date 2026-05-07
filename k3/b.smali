.class public final Lk3/b;
.super Lk3/a;
.source ""


# instance fields
.field public final c:Lk3/b$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lk3/a;-><init>()V

    new-instance v0, Lk3/b$a;

    invoke-direct {v0}, Lk3/b$a;-><init>()V

    iput-object v0, p0, Lk3/b;->c:Lk3/b$a;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Random;
    .registers 2

    iget-object p0, p0, Lk3/b;->c:Lk3/b$a;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "implStorage.get()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
