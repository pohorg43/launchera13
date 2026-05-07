.class public final Lh3/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/c$c;,
        Lh3/c$a;,
        Lh3/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo3/e<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lh3/d;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lh3/d;)V
    .registers 4

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/c;->a:Ljava/io/File;

    iput-object p2, p0, Lh3/c;->b:Lh3/d;

    const p1, 0x7fffffff

    iput p1, p0, Lh3/c;->c:I

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh3/c$b;

    invoke-direct {v0, p0}, Lh3/c$b;-><init>(Lh3/c;)V

    return-object v0
.end method
