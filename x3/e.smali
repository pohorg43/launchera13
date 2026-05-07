.class public final Lx3/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lv3/y;

.field public static final b:Lv3/y;

.field public static final c:Lv3/y;

.field public static final d:Lx3/a;

.field public static final e:Lx3/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lv3/y;

    const-string v1, "UNLOCK_FAIL"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/e;->a:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/e;->b:Lv3/y;

    new-instance v1, Lv3/y;

    const-string v2, "UNLOCKED"

    invoke-direct {v1, v2}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v1, Lx3/e;->c:Lv3/y;

    new-instance v2, Lx3/a;

    invoke-direct {v2, v0}, Lx3/a;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lx3/e;->d:Lx3/a;

    new-instance v0, Lx3/a;

    invoke-direct {v0, v1}, Lx3/a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lx3/e;->e:Lx3/a;

    return-void
.end method

.method public static a(ZI)Lx3/b;
    .registers 2

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    new-instance p1, Lx3/c;

    invoke-direct {p1, p0}, Lx3/c;-><init>(Z)V

    return-object p1
.end method
