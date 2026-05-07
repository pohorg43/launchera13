.class public final Lq3/h2;
.super Lb3/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/h2$a;
    }
.end annotation


# static fields
.field public static final b:Lq3/h2$a;


# instance fields
.field public a:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq3/h2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/h2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lq3/h2;->b:Lq3/h2$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lq3/h2;->b:Lq3/h2$a;

    invoke-direct {p0, v0}, Lb3/a;-><init>(Lb3/f$b;)V

    return-void
.end method
