.class public Lo0/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo0/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/d$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lo0/d$a;


# direct methods
.method public constructor <init>(Lo0/d$a;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lo0/d;->a:J

    iput-object p1, p0, Lo0/d;->b:Lo0/d$a;

    return-void
.end method
