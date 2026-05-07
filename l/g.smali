.class public Ll/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/g$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ll/g$a;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ll/g$a;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/g;->a:Ljava/lang/String;

    iput-object p2, p0, Ll/g;->b:Ll/g$a;

    iput-boolean p3, p0, Ll/g;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean p1, p1, Lcom/airbnb/lottie/j;->m:Z

    if-nez p1, :cond_b

    const-string p0, "Animation contains merge paths but they are disabled."

    invoke-static {p0}, Lq/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_b
    new-instance p1, Lg/l;

    invoke-direct {p1, p0}, Lg/l;-><init>(Ll/g;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "MergePaths{mode="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ll/g;->b:Ll/g$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
