.class public final Lk0/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk0/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk0/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln0/b;


# direct methods
.method public constructor <init>(Ln0/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/k$a;->a:Ln0/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lk0/e;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lk0/k;

    iget-object p0, p0, Lk0/k$a;->a:Ln0/b;

    invoke-direct {v0, p1, p0}, Lk0/k;-><init>(Ljava/io/InputStream;Ln0/b;)V

    return-object v0
.end method
