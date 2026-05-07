.class Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;
.super Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenAppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerticalSplitItem"
.end annotation


# instance fields
.field private final mDisable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "disable"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;->mDisable:Z

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;->mDisable:Z

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "VerticalSplitItem{Tag="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;->mDisable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
