.class public final Lk0/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk0/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lt0/q;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ln0/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/q;

    invoke-direct {v0, p1, p2}, Lt0/q;-><init>(Ljava/io/InputStream;Ln0/b;)V

    iput-object v0, p0, Lk0/k;->a:Lt0/q;

    const/high16 p0, 0x500000

    invoke-virtual {v0, p0}, Lt0/q;->mark(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lk0/k;->c()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .registers 1

    iget-object p0, p0, Lk0/k;->a:Lt0/q;

    invoke-virtual {p0}, Lt0/q;->b()V

    return-void
.end method

.method public c()Ljava/io/InputStream;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk0/k;->a:Lt0/q;

    invoke-virtual {v0}, Lt0/q;->reset()V

    iget-object p0, p0, Lk0/k;->a:Lt0/q;

    return-object p0
.end method
