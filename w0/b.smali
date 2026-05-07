.class public Lw0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm0/w;


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lw0/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public c()Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lw0/b;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lw0/b;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic recycle()V
    .registers 1

    return-void
.end method
