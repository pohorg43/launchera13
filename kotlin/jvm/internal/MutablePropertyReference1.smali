.class public abstract Lkotlin/jvm/internal/MutablePropertyReference1;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source ""

# interfaces
.implements Ln3/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Ln3/b;
    .registers 1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Ln3/j;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Ln3/l;

    move-result-object p0

    check-cast p0, Ln3/j;

    invoke-interface {p0, p1}, Ln3/n;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Ln3/l$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference1;->getGetter()Ln3/n$a;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Ln3/n$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Ln3/l;

    move-result-object p0

    check-cast p0, Ln3/j;

    invoke-interface {p0}, Ln3/n;->getGetter()Ln3/n$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSetter()Ln3/h;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference1;->getSetter()Ln3/j$a;

    move-result-object p0

    return-object p0
.end method

.method public getSetter()Ln3/j$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Ln3/l;

    move-result-object p0

    check-cast p0, Ln3/j;

    invoke-interface {p0}, Ln3/j;->getSetter()Ln3/j$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation
.end method
