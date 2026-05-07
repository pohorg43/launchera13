.class public final Lh3/c$b$a;
.super Lh3/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public c:[Ljava/io/File;

.field public d:I

.field public e:Z

.field public final synthetic f:Lh3/c$b;


# direct methods
.method public constructor <init>(Lh3/c$b;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lh3/c$b$a;->f:Lh3/c$b;

    invoke-direct {p0, p2}, Lh3/c$a;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 4

    iget-boolean v0, p0, Lh3/c$b$a;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_23

    iget-object v0, p0, Lh3/c$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_23

    iget-object v0, p0, Lh3/c$b$a;->f:Lh3/c$b;

    iget-object v0, v0, Lh3/c$b;->d:Lh3/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lh3/c$c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lh3/c$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_23

    iget-object v0, p0, Lh3/c$b$a;->f:Lh3/c$b;

    iget-object v0, v0, Lh3/c$b;->d:Lh3/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lh3/c$b$a;->e:Z

    :cond_23
    iget-object v0, p0, Lh3/c$b$a;->c:[Ljava/io/File;

    if-eqz v0, :cond_3d

    iget v2, p0, Lh3/c$b$a;->d:I

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v2, v0, :cond_3d

    iget-object v0, p0, Lh3/c$b$a;->c:[Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lh3/c$b$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lh3/c$b$a;->d:I

    aget-object p0, v0, v1

    return-object p0

    :cond_3d
    iget-boolean v0, p0, Lh3/c$b$a;->b:Z

    if-nez v0, :cond_46

    iput-boolean v1, p0, Lh3/c$b$a;->b:Z

    iget-object p0, p0, Lh3/c$c;->a:Ljava/io/File;

    return-object p0

    :cond_46
    iget-object p0, p0, Lh3/c$b$a;->f:Lh3/c$b;

    iget-object p0, p0, Lh3/c$b;->d:Lh3/c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
