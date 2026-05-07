.class public Lcom/coui/responsiveui/config/UIConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/responsiveui/config/UIConfig$WindowType;,
        Lcom/coui/responsiveui/config/UIConfig$Status;
    }
.end annotation


# instance fields
.field public a:Lcom/coui/responsiveui/config/UIConfig$Status;

.field public b:I

.field public c:Lcom/coui/responsiveui/config/UIScreenSize;

.field public d:Lcom/coui/responsiveui/config/UIConfig$WindowType;


# direct methods
.method public constructor <init>(Lcom/coui/responsiveui/config/UIConfig$Status;Lcom/coui/responsiveui/config/UIScreenSize;ILcom/coui/responsiveui/config/UIConfig$WindowType;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/responsiveui/config/UIConfig;->a:Lcom/coui/responsiveui/config/UIConfig$Status;

    iput-object p2, p0, Lcom/coui/responsiveui/config/UIConfig;->c:Lcom/coui/responsiveui/config/UIScreenSize;

    iput p3, p0, Lcom/coui/responsiveui/config/UIConfig;->b:I

    iput-object p4, p0, Lcom/coui/responsiveui/config/UIConfig;->d:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    :cond_12
    check-cast p1, Lcom/coui/responsiveui/config/UIConfig;

    iget v2, p0, Lcom/coui/responsiveui/config/UIConfig;->b:I

    iget v3, p1, Lcom/coui/responsiveui/config/UIConfig;->b:I

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Lcom/coui/responsiveui/config/UIConfig;->a:Lcom/coui/responsiveui/config/UIConfig$Status;

    iget-object v3, p1, Lcom/coui/responsiveui/config/UIConfig;->a:Lcom/coui/responsiveui/config/UIConfig$Status;

    if-ne v2, v3, :cond_2b

    iget-object p0, p0, Lcom/coui/responsiveui/config/UIConfig;->c:Lcom/coui/responsiveui/config/UIScreenSize;

    iget-object p1, p1, Lcom/coui/responsiveui/config/UIConfig;->c:Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public getOrientation()I
    .registers 1

    iget p0, p0, Lcom/coui/responsiveui/config/UIConfig;->b:I

    return p0
.end method

.method public getScreenSize()Lcom/coui/responsiveui/config/UIScreenSize;
    .registers 1

    iget-object p0, p0, Lcom/coui/responsiveui/config/UIConfig;->c:Lcom/coui/responsiveui/config/UIScreenSize;

    return-object p0
.end method

.method public getStatus()Lcom/coui/responsiveui/config/UIConfig$Status;
    .registers 1

    iget-object p0, p0, Lcom/coui/responsiveui/config/UIConfig;->a:Lcom/coui/responsiveui/config/UIConfig$Status;

    return-object p0
.end method

.method public getWindowType()Lcom/coui/responsiveui/config/UIConfig$WindowType;
    .registers 1

    iget-object p0, p0, Lcom/coui/responsiveui/config/UIConfig;->d:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/coui/responsiveui/config/UIConfig;->a:Lcom/coui/responsiveui/config/UIConfig$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/coui/responsiveui/config/UIConfig;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/coui/responsiveui/config/UIConfig;->c:Lcom/coui/responsiveui/config/UIScreenSize;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "UIConfig{mStatus= "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/responsiveui/config/UIConfig;->a:Lcom/coui/responsiveui/config/UIConfig$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/responsiveui/config/UIConfig;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/responsiveui/config/UIConfig;->c:Lcom/coui/responsiveui/config/UIScreenSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/responsiveui/config/UIConfig;->d:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
