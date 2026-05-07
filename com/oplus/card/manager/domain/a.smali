.class public final synthetic Lcom/oplus/card/manager/domain/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/card/manager/domain/a;->a:I

    iput p2, p0, Lcom/oplus/card/manager/domain/a;->b:I

    iput p3, p0, Lcom/oplus/card/manager/domain/a;->c:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/oplus/card/manager/domain/a;->a:I

    iget v1, p0, Lcom/oplus/card/manager/domain/a;->b:I

    iget p0, p0, Lcom/oplus/card/manager/domain/a;->c:I

    check-cast p1, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->b(IIILcom/oplus/card/manager/domain/model/CardModel;)Z

    move-result p0

    return p0
.end method
