.class public Lcom/agc/asv/CameraMultipleModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public drawableRes:I

.field public id:Ljava/lang/String;

.field public index:I

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/agc/asv/CameraMultipleModel;->type:I

    iput-object p2, p0, Lcom/agc/asv/CameraMultipleModel;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/agc/asv/CameraMultipleModel;->text:Ljava/lang/String;

    iput p4, p0, Lcom/agc/asv/CameraMultipleModel;->drawableRes:I

    iput p5, p0, Lcom/agc/asv/CameraMultipleModel;->index:I

    return-void
.end method
