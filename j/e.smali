.class public Lj/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/l;",
            ">;"
        }
    .end annotation
.end field

.field public final b:C

.field public final c:D

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll/l;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/e;->a:Ljava/util/List;

    iput-char p2, p0, Lj/e;->b:C

    iput-wide p5, p0, Lj/e;->c:D

    iput-object p7, p0, Lj/e;->d:Ljava/lang/String;

    iput-object p8, p0, Lj/e;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(CLjava/lang/String;Ljava/lang/String;)I
    .registers 4

    add-int/lit8 p0, p0, 0x0

    mul-int/lit8 p0, p0, 0x1f

    const/16 v0, 0x1f

    invoke-static {p1, p0, v0}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public hashCode()I
    .registers 3

    iget-char v0, p0, Lj/e;->b:C

    iget-object v1, p0, Lj/e;->e:Ljava/lang/String;

    iget-object p0, p0, Lj/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lj/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
