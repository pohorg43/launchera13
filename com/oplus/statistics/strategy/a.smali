.class public final synthetic Lcom/oplus/statistics/strategy/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:Lcom/oplus/statistics/strategy/RequestFireWall;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/statistics/strategy/RequestFireWall;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/strategy/a;->a:Lcom/oplus/statistics/strategy/RequestFireWall;

    iput-object p2, p0, Lcom/oplus/statistics/strategy/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oplus/statistics/strategy/a;->c:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/oplus/statistics/strategy/a;->a:Lcom/oplus/statistics/strategy/RequestFireWall;

    iget-object v1, p0, Lcom/oplus/statistics/strategy/a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oplus/statistics/strategy/a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/statistics/strategy/RequestFireWall;->a(Lcom/oplus/statistics/strategy/RequestFireWall;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
