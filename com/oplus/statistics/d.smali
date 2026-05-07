.class public final synthetic Lcom/oplus/statistics/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/statistics/d;->a:I

    iput p2, p0, Lcom/oplus/statistics/d;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/d;->a:I

    iget p0, p0, Lcom/oplus/statistics/d;->b:I

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->E(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
