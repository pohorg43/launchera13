.class public final Lk3/c$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lk3/c$a$a;

.field private static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk3/c$a$a;

    invoke-direct {v0}, Lk3/c$a$a;-><init>()V

    sput-object v0, Lk3/c$a$a;->a:Lk3/c$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 1

    sget-object p0, Lk3/c;->a:Lk3/c$a;

    return-object p0
.end method
