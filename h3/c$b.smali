.class public final Lh3/c$b;
.super Lz2/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/c$b$a;,
        Lh3/c$b$c;,
        Lh3/c$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lh3/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lh3/c;


# direct methods
.method public constructor <init>(Lh3/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh3/c$b;->d:Lh3/c;

    invoke-direct {p0}, Lz2/b;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lh3/c$b;->c:Ljava/util/ArrayDeque;

    iget-object v1, p1, Lh3/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object p1, p1, Lh3/c;->a:Ljava/io/File;

    invoke-virtual {p0, p1}, Lh3/c$b;->a(Ljava/io/File;)Lh3/c$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_34

    :cond_1e
    iget-object v1, p1, Lh3/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Lh3/c$b$b;

    iget-object p1, p1, Lh3/c;->a:Ljava/io/File;

    invoke-direct {v1, p0, p1}, Lh3/c$b$b;-><init>(Lh3/c$b;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_34

    :cond_31
    const/4 p1, 0x3

    iput p1, p0, Lz2/b;->a:I

    :goto_34
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lh3/c$a;
    .registers 4

    iget-object v0, p0, Lh3/c$b;->d:Lh3/c;

    iget-object v0, v0, Lh3/c;->b:Lh3/d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    new-instance v0, Lh3/c$b$a;

    invoke-direct {v0, p0, p1}, Lh3/c$b$a;-><init>(Lh3/c$b;Ljava/io/File;)V

    goto :goto_1e

    :cond_13
    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :cond_19
    new-instance v0, Lh3/c$b$c;

    invoke-direct {v0, p0, p1}, Lh3/c$b$c;-><init>(Lh3/c$b;Ljava/io/File;)V

    :goto_1e
    return-object v0
.end method
