.class public final Ld3/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/f$a;
    }
.end annotation


# static fields
.field public static final a:Ld3/f$a;

.field public static b:Ld3/f$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ld3/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ld3/f$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Ld3/f;->a:Ld3/f$a;

    return-void
.end method
