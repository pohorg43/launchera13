.class public Lq0/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/d$a;,
        Lq0/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq0/n<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method

.method public b(Ljava/lang/Object;IILj0/e;)Lq0/n$a;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    new-instance p0, Lq0/n$a;

    new-instance p2, Lf1/b;

    invoke-direct {p2, p1}, Lf1/b;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lq0/d$a;

    invoke-direct {p3, p1}, Lq0/d$a;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2, p3}, Lq0/n$a;-><init>(Lj0/c;Lk0/d;)V

    return-object p0
.end method
