.class public final Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/memory/MemoryInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryInfoWrapper"
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public textDirectionFlag:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->desc:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->textDirectionFlag:I

    return-void
.end method
