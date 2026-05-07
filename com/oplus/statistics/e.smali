.class public final synthetic Lcom/oplus/statistics/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/statistics/e;->a:I

    iput p2, p0, Lcom/oplus/statistics/e;->b:I

    iput-object p3, p0, Lcom/oplus/statistics/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/statistics/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/statistics/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/oplus/statistics/e;->a:I

    iget v1, p0, Lcom/oplus/statistics/e;->b:I

    iget-object v2, p0, Lcom/oplus/statistics/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/statistics/e;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/statistics/e;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/statistics/OplusTrack;->c(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
