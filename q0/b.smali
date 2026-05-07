.class public Lq0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/b$d;,
        Lq0/b$a;,
        Lq0/b$c;,
        Lq0/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq0/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:Lq0/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq0/b$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/b;->a:Lq0/b$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

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

    check-cast p1, [B

    new-instance p2, Lq0/n$a;

    new-instance p3, Lf1/b;

    invoke-direct {p3, p1}, Lf1/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lq0/b$c;

    iget-object p0, p0, Lq0/b;->a:Lq0/b$b;

    invoke-direct {p4, p1, p0}, Lq0/b$c;-><init>([BLq0/b$b;)V

    invoke-direct {p2, p3, p4}, Lq0/n$a;-><init>(Lj0/c;Lk0/d;)V

    return-object p2
.end method
